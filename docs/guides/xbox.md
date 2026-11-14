# SLEM CV on Xbox
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

A PC program. It watches your Xbox on the PC screen through the Xbox app, reads the
shot meter, and lets go of X for you at the right moment. Nothing is installed on the
Xbox.

**Do the steps in order. One step at a time.**

---

## PART 1 — Install (once per PC)

**Step 1.** Unzip the SLEM folder somewhere permanent — Desktop or Documents.

**Step 2.** Open `SLEM-CV\` and right-click **`Start Setup.bat`** →
**Run as administrator** → **Yes**.

This installs the controller bridge. Without it SLEM opens, shows its overlay, and
reads nothing.

If you double-click it by mistake, the script notices it isn't elevated and reopens
itself with a permission prompt. Click **Yes** and carry on.

**Step 3.** Install the **Xbox app** from the Microsoft Store if it isn't on the PC
already, and sign in with the same account as on the Xbox.

**Step 4.** Xbox and PC both on an **Ethernet** cable. Not Wi-Fi. Wi-Fi = late shots.

**Step 5.** On the Xbox: **Settings → Devices & connections → Remote features →
Enable remote features** ON, Power mode **Sleep**.

**Step 6.** Windows: turn **Game Bar** off (Settings → Gaming → Game Bar). Close Steam
completely (tray icon → Exit).

---

## Which controller

SLEM hides your real controller from the game and hands the game a virtual one. That
works for:

- a PlayStation controller (DualSense or DualShock 4), USB or Bluetooth — **best choice**
- an Xbox controller on **Bluetooth**

It does **not** work for an Xbox controller on a USB cable. Windows drives a wired
Xbox pad as XInput and it cannot be hidden, so the game would see both pads.

**Plug the controller into the PC, not the Xbox.**

---

## PART 2 — First session

**Step 7.** In 2K on the Xbox, **Settings → Controller Settings**:

| Setting | Set it to |
|---|---|
| Shot meter | **ON** |
| Shot meter type | **Arrow 2** |
| Shot meter size | **Large** |
| Shot meter position | **To the side of the player** |
| Shot feedback | **All shots** |

**Step 8.** Open **SLEM Scripts.exe**. If Windows asks for confirmation before opening it, choose
**More info → Run anyway**.

**Step 9.** Press **Log in with Discord** → **Authorize** → **This is my PC**. Match
the 6-letter code.

**Step 10.** Press the console button top right until it reads **Xbox**. Read the red
card, wait for the countdown, press **I take full responsibility.**

**Step 11.** In SLEM's Setup window, go through each step until green. Open the Xbox
app remote play when asked, then press **Check again**.

**Step 12.** Hold X and keep holding. SLEM lets go for you. Give it 10–15 shots.

**Step 13.** Press **Lock aims** when the timing looks right, then **Stop** when done.

---

## Problems

| What you see | What to do |
|---|---|
| SLEM doesn't see my controller | You didn't run Step 2, or ran it without administrator rights. Right-click `Start Setup.bat` → **Run as administrator** |
| Shots are consistently early or late | Wi-Fi somewhere in the chain (Step 4), or shot meter settings don't match Part 2 |
| Black picture / no stream in SLEM | Xbox remote play isn't connected, or the Xbox woke into the wrong power mode. Check Step 5 |
| "a wired Xbox controller cannot be hidden from the game" | Put the Xbox controller on Bluetooth, or use a PlayStation controller |
| Stream works but SLEM reads nothing | Controller is plugged into the Xbox instead of the PC |
