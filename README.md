# SLEM CV Scripts

**discord.gg/slem**

NBA 2K shot-timing scripts. SLEM watches your shot meter on screen and releases
the shot button at the right moment, so you stop guessing at the green window.

Works on PC, PlayStation 5 and Xbox Series X|S.

---

## Start here

| You play on | Read this | You need |
|---|---|---|
| PC (Steam) | [`docs/SLEM-CV-PC-Setup.pdf`](docs/SLEM-CV-PC-Setup.pdf) | Windows 10/11, the game on the same PC |
| PlayStation 5 | [`docs/SLEM-CV-PlayStation-Setup.pdf`](docs/SLEM-CV-PlayStation-Setup.pdf) | A PC, and chiaki-ng |
| Xbox Series X\|S | [`docs/SLEM-CV-Xbox-Setup.pdf`](docs/SLEM-CV-Xbox-Setup.pdf) | A PC, and the Xbox app |

On every platform the app runs on a **PC**. Console players stream the console to
the PC; PC players run it beside the game. No capture card, no hardware mod.

**Read the guide for your platform before you touch anything.** The in-game
settings matter and the order matters.

---

## Quick start

1. Download the repo ZIP and **extract it fully** — Desktop or Documents. Not
   into the ZIP preview, not on a network drive.
2. Open the `SLEM-CV` folder.
3. Right-click **`Start Setup.bat`** → **Run as administrator** → **Yes**.

Setup registers the controller bridge and writes `SLEM Scripts.exe` to
`%LOCALAPPDATA%\SLEM\bin`. You do this **once**.

After that, you run **`SLEM Scripts.exe`**, not the setup file. The full
walkthrough is in your platform's PDF.

> Re-run setup after a Windows feature update. Those reset the driver
> registration and the app will not see your controller until you do.

---

## What is in the repo

```
SLEM-CV/                  what you actually run
  Start Setup.bat         right-click, Run as administrator (once)
  README.md               folder-level notes
docs/                     the guides
  SLEM-CV-PC-Setup.pdf
  SLEM-CV-PlayStation-Setup.pdf
  SLEM-CV-Xbox-Setup.pdf
  guides/                 markdown source for the PDFs
scripts/_cache/           controller bridge component, staged as numbered parts
CHANGELOG.md              what changed and when
SUPPORT.md                where to ask
LICENSE
```

`scripts/_cache/` holds the bridge as numbered pieces plus a `manifest.json`.
Setup joins them in order, checks them, and writes the executable. You should
never need to open that folder by hand.

---

## Which controller

SLEM hides your real controller from the game and hands the game its own. That
works for:

- a PlayStation controller (DualSense or DualShock 4), USB or Bluetooth — best choice
- an Xbox controller on **Bluetooth**

It does **not** work for an Xbox controller on a USB cable — Windows drives a wired
pad as XInput and it cannot be hidden, so the game sees both.

**No Cronus Zen or Titan Two in the chain.** The controller goes straight to the PC.

---

## Troubleshooting

| What you see | What to do |
|---|---|
| `Cache folder missing` | ZIP not fully extracted, or the `.bat` is running from inside the ZIP preview. Extract everything first. |
| `Could not unpack the component` | Incomplete download, or the window is not elevated. Delete `%LOCALAPPDATA%\SLEM`, re-extract, run as administrator. |
| `The unpacked component is damaged` | A part did not download fully. Download the repo ZIP again. |
| Window opens and closes instantly | You ran the app before setup, or ran setup without elevation. Run `Start Setup.bat` as administrator. |
| App can't see my controller | Setup was not run as administrator. Re-run it. |
| Black picture / "set Display Mode to Borderless" | The game is in exclusive Fullscreen. Change it and restart the game. |
| Nothing happens on the shot button | Hold the button. SLEM releases it — it does not tap. |

More in your platform's PDF, and in [`SUPPORT.md`](SUPPORT.md).

---

## Risk

SLEM runs on a PC and drives your controller. On PC, NBA 2K's anti-cheat can see
what runs on your machine, and a PC account can be suspended directly. SLEM does
not touch the game — it reads your screen and plays your controller — but nobody
can promise it is never noticed. Use at your own risk. No ban guarantee and no
guarantee of results; performance depends on your PC, controller and connection.

---

## Changelog

[`CHANGELOG.md`](CHANGELOG.md)

## Support

Discord: **discord.gg/slem** — post in the setup channel with your platform and
the exact message you see on screen.
