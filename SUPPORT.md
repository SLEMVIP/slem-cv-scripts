# Support

**Discord: discord.gg/slem** — the setup channel is the fastest place to get an
answer.

When you post, include:

- your platform (PC / PS5 / Xbox)
- the exact message you see on screen, in full
- whether you ran `Start Setup.bat` as administrator

---

## Common messages

| Message | What it means | Fix |
|---|---|---|
| `Cache folder missing` | The ZIP was not fully extracted, or the `.bat` is running from inside the ZIP preview | Extract the whole ZIP to Desktop or Documents, then run again |
| `Could not unpack the component` | Download was incomplete, or the window was not elevated | Delete the `SLEM` folder, re-download, extract, run as administrator |
| `The unpacked component is damaged` | A piece did not download fully | Download the repo ZIP again |
| Window opens and closes instantly | You ran the component directly instead of setup | Run `Start Setup.bat` as administrator |

---

## Before you ask

- Have you read the guide for your platform in `docs/`?
- Have you extracted the ZIP to a real folder? Windows will happily let you
  open a `.bat` from inside a ZIP preview, and it fails every time.
- Did you click **Run as administrator** on `SLEM-CV\Start Setup.bat`? Driver
  registration needs it.
- Have you re-run setup after changing controller? Profile and driver state is
  per-controller.

---

## Not covered

- Account bans. See the risk note in the README.
- Anything about the game's own settings beyond what the guide covers.
