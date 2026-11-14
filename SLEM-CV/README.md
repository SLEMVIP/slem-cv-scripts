# SLEM-CV

This folder is what you run. Everything else in the repo supports it.

```
SLEM-CV\
  Start Setup.bat      <- right-click this, Run as administrator
```

## What happens when you run it

`Start Setup.bat` registers the controller bridge and writes
`SLEM Scripts.exe` to `%LOCALAPPDATA%\SLEM\bin`.

You run **setup once**. After that you run `SLEM Scripts.exe` — not this
folder — every session. Setup does not need to be repeated unless Windows
updates the controller driver stack.

## If setup refuses to run

- **"Cache folder missing"** — the ZIP was not extracted fully. Extract the
  whole thing to Desktop or Documents and try again.
- **"Could not unpack the component"** — the download was incomplete, or the
  window is not elevated. Delete the `SLEM` folder and re-extract.
- **"The unpacked component is damaged"** — a part did not download. Download
  the repo ZIP again.

Setup asks for elevation itself if you double-click it. Clicking **Yes** on the
permission prompt is expected; the bridge registers a virtual controller driver
and Windows only allows that from an elevated process.

## Where things end up

| Path | What |
|---|---|
| `%LOCALAPPDATA%\SLEM\bin\SLEM Scripts.exe` | the app |
| `%LOCALAPPDATA%\SLEM\bin\` | logs, per-book lock files |
| `scripts\_cache\` (in the download) | the staged component |

Nothing is written to Program Files and nothing needs a reboot.
