# SLEM CV on PC
### discord.gg/slem

<div class="callout">
<strong>Before anything else:</strong> right-click <code>SLEM-CV\Start Setup.bat</code> →
<strong>Run as administrator</strong> → <strong>Yes</strong>.

The controller bridge registers a virtual controller driver. Windows only allows
a driver registration from an elevated process, so this step is <strong>required</strong>.
Done once per PC.
</div>

---

## What this is

A PC program. NBA 2K runs on this same PC (Steam). SLEM watches the game window on
your screen, reads the shot meter, and lets go of the shot button for you at the right
moment. No console, no stream, no capture card.

**Read this first.** On PC the app runs on the same computer as the game. NBA 2K's
anti-cheat can see programs on your PC, and a PC account can be banned or suspended
directly, with no console in between. SLEM does nothing to the game: it only looks at
your screen and plays your controller for you, but nobody can promise that this is
never detected. Use at your own risk. No ban guarantee, no 100% green guarantee, and
results depend on your PC and your setup.

**Do the steps in order. One step at a time. Do not skip.**

---

## PART 1 — Setup (once per PC)

**Step 1.** Unzip the SLEM folder somewhere permanent — Desktop or Documents. Not
inside the ZIP, not on a network drive.

**Step 2.** Open `SLEM-CV\` and right-click **`Start Setup.bat`** →
**Run as administrator** → **Yes**.

This installs the controller bridge. Without it SLEM opens, shows its overlay, and
reads nothing.

If you double-click it by mistake, the script notices it isn't elevated and reopens
itself with a permission prompt. Click **Yes** and carry on.

> Re-run this after a Windows feature update. Those reset the driver registration.

**Step 3.** Open **SLEM Scripts.exe**. If Windows asks for confirmation before opening it, choose
**More info → Run anyway**.

**Step 4.** Press **Log in with Discord**. Your browser opens Discord, press
**Authorize**, then **This is my PC**. The page shows a 6-letter code; the app shows
the same code. Back in the app your name is in the top bar.

**Step 5.** Top right: press the console button until it says **PC mode**. A red card
opens: *PC mode — extra risk.* Read it. The button counts down 10 seconds, then press
**I take full responsibility.**

---

## Which controller

SLEM has to hide your real controller from the game and hand the game its own
controller instead. That works for:

- a PlayStation controller (DualSense or DualShock 4), USB or Bluetooth — **best choice**
- an Xbox controller on **Bluetooth**

It does **not** work for an Xbox controller on a USB cable. Windows drives a wired
Xbox pad as XInput and it cannot be hidden from the game, so the game would see both
pads and your hand on the button.

**No Cronus Zen, no Titan Two in the chain.** The controller goes straight to the PC.

---

## PART 2 — Game settings (once)

**Step 6.** In 2K, **Settings → Video Settings** (or Display):

| Setting | Set it to |
|---|---|
| Display Mode | **Borderless** or **Windowed** — not Fullscreen |

In Fullscreen SLEM sees a black picture.

**Step 7.** In 2K, **Settings → Controller Settings**:

| Setting | Set it to |
|---|---|
| Shot meter | **ON** |
| Shot meter type | **Arrow 2** |
| Shot meter size | **Large** |
| Shot meter position | **To the side of the player** |
| Shot feedback | **All shots** — the TIMING box must show after every shot |

Close the game after that. SLEM starts **before** the game.

---

## PART 3 — First session

**Step 8.** Start SLEM. The **Setup** window opens. Go through every step top to
bottom until each is green.

- **Controller step** — plug the controller in (PlayStation by USB, or Xbox on
  Bluetooth) and press **Find my controller**.
- **NBA 2K on this PC step** — start the game in Borderless or Windowed, then press
  **Check again**.
- **Test step** — this only watches. Shoot 10 shots yourself and let go on your own
  timing; it measures the gap.

**Step 9.** Hold the shot button and keep holding it (X, or Square on a PlayStation
controller). SLEM lets go for you. Do not tap — if the panel says *"you let go first:
N of last 10"*, you released before SLEM did.

**Step 10.** Happy with the timing? Press **Lock aims**. The badge reads **LOCKED**,
learning stops, and the set/fade numbers become boxes you can type into (Enter
applies, 80–400 ms). The lock is saved per book and survives a restart. Press it again
to let SLEM learn again.

**Step 11.** Done: press **Stop** in SLEM. That gives your controller back to Windows.

> First session: expect a few early or late shots while it learns your setup. Give it
> 10 to 15 shots.

---

## Problems

| What you see | What to do |
|---|---|
| SLEM doesn't see my controller | You didn't run Step 2, or ran it without administrator rights. Right-click `Start Setup.bat` → **Run as administrator** |
| SLEM says the picture is black, or "set Display Mode to Borderless or Windowed" | The game is in exclusive Fullscreen. Change Display Mode (Step 6) and restart the game |
| SLEM does not find the controller | Steam Input is still on for the game (Step 7), or DS4Windows / DSX is running. Fix it, Stop, Start again |
| "a wired Xbox controller cannot be hidden from the game" | Put the Xbox controller on Bluetooth, or use a PlayStation controller |
| Red chip "replug the controller" / "the game still sees your controller" | Unplug, wait two seconds, plug back in. While playing it means three fired shots in a row weren't seen by the game; learning pauses until the next shot |
