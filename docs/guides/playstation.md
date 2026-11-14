# SLEM CV on PlayStation
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

A PC program. It watches your PS5 on the PC screen, reads the shot meter, and lets go
of Square for you at the right moment. Nothing is installed on the PS5.

It does **not** use Sony's PS Remote Play app. It uses **chiaki-ng**, a free app that
shows your PS5 on the PC the same way.

**Do the steps in order. One step at a time. Do not skip.**

---

## PART 1 — Install (once per PC)

**Step 1.** Unzip the SLEM folder somewhere permanent — Desktop or Documents.

**Step 2.** Open `SLEM-CV\` and right-click **`Start Setup.bat`** →
**Run as administrator** → **Yes**.

This installs the controller bridge — the piece that hides your real pad from the game
and gives it a virtual one. Without it SLEM opens, shows its overlay, and reads
nothing.

If you double-click it by mistake, the script notices it isn't elevated and reopens
itself with a permission prompt. Click **Yes** and carry on.

**Step 3.** Install **chiaki-ng v1.10.0** from
`github.com/streetpea/chiaki-ng/releases`. Download the Windows installer, run it,
Next, Next, Finish.

**Step 4.** Open chiaki-ng and register the PS5 the way the app asks (it shows a code
on the PS5 under *Settings → System → Remote Play → Link Device*). This is the same
pairing Sony's own app uses.

**Step 5.** Set chiaki-ng to stream at **1080p / 60fps**, and turn **Hardware
decode** on.

---

## PART 2 — Network (this is where most problems come from)

**Step 6.** PS5 and PC both on **Ethernet**. Not Wi-Fi on either end. Wi-Fi gives
late shots and SLEM will learn the wrong timing.

**Step 7.** On the PS5: **Settings → System → Remote Play → Enable Remote Play** ON.

**Step 8.** Windows: turn **Game Bar** off (Settings → Gaming → Game Bar). Close Steam
completely (tray icon → Exit).

---

## Which controller

SLEM hides your real controller from the game and hands the game a virtual one. That
works for:

- a PlayStation controller (DualSense or DualShock 4), USB or Bluetooth — **best choice**
- an Xbox controller on **Bluetooth**

It does **not** work for an Xbox controller on a USB cable, and you cannot use the PS5
controller over the stream — plug the controller into the **PC**.

**No Cronus Zen, no Titan Two in the chain.**

---

## PART 3 — First session

**Step 9.** In 2K on the PS5, **Settings → Controller Settings**:

| Setting | Set it to |
|---|---|
| Shot meter | **ON** |
| Shot meter type | **Arrow 2** |
| Shot meter size | **Large** |
| Shot meter position | **To the side of the player** |
| Shot feedback | **All shots** |

**Step 10.** Open **SLEM Scripts.exe**. If Windows asks for confirmation before opening it, choose
**More info → Run anyway**.

**Step 11.** Press **Log in with Discord** → **Authorize** → **This is my PC**. Match
the 6-letter code shown in both places.

**Step 12.** Press the console button top right until it reads **PS5**. Read the red
card, wait for the countdown, press **I take full responsibility.**

**Step 13.** In SLEM's Setup window, go through each step until it's green. Start
chiaki-ng when the stream step asks, then press **Check again**.

**Step 14.** Hold Square and keep holding. SLEM lets go for you. Give it 10–15 shots
while it learns.

**Step 15.** Press **Lock aims** when the timing looks right, then **Stop** when done.

---

## Problems

| What you see | What to do |
|---|---|
| SLEM doesn't see my controller | You didn't run Step 2, or ran it without administrator rights. Right-click `Start Setup.bat` → **Run as administrator** |
| Shots are consistently early or late | Wi-Fi somewhere in the chain (Step 6), or shot meter settings don't match Part 3 |
| Black picture / no stream in SLEM | chiaki-ng isn't connected yet, or is set to a resolution above 1080p. Reconnect, then press **Check again** |
| "a wired Xbox controller cannot be hidden from the game" | Put the Xbox controller on Bluetooth, or use a PlayStation controller |
| Stream looks fine but SLEM reads nothing | Controller is plugged into the PS5 instead of the PC |
