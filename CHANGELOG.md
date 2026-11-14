# Changelog

All notable changes to the SLEM CV setup pack. Dates are when the pack was
published, not when a build was compiled.

---

## 2026-11-14

**Setup**

- Setup helper now asks for administrator access itself if you double-click it,
  instead of failing quietly and looking like a broken download.
- The component is checked after unpacking. If a part did not download fully,
  setup now tells you to delete the folder and extract again instead of starting
  something that cannot run.
- Setup no longer reuses a temporary name that other software on your PC also
  uses. If you have ever had another tool misbehave after running a setup
  script, this was why.
- Parts are joined in numbered order. Extracting the ZIP with a tool that does
  not preserve file order no longer produces a broken component.

**Guides**

- Added screenshots to the PC guide for the in-game settings.
- PlayStation guide: added the chiaki-ng version pin — newer builds changed the
  controller passthrough setting and broke the pad handoff.
- Xbox guide: corrected the controller profile name — it was listed as two
  words and the app shows it as one.
- All three guides now open with the elevation step. Previously the guides went
  straight to the app and readers never ran setup.

**Packaging**

- Reorganised the download to match the guides: everything you run now sits in
  `SLEM-CV/`, and the guides moved to `docs/`. Earlier the setup file sat at the
  top level and the guides were loose, which did not match the walkthrough
  step 2.
- Setup finds its staged parts from either layout, so extracting by hand or
  through Windows' built-in unzip both work.
- Added a folder README, a LICENSE and a support page.

---

## 2026-11-11

**Setup**

- Repaired the completion path so a first run that finds nothing to configure
  no longer counts as finished. Re-running setup now retries properly instead of
  showing a screen and doing nothing.
- Progress is remembered across a restart. If setup is interrupted and the PC
  reboots, it continues where it left off rather than starting over.
- Added a retry when the connection drops mid-setup.

**Guides**

- Rewrote the PC guide. The previous version assumed you already knew where the
  shot meter setting lived.
- Added a troubleshooting section to every guide.
- Added the Discord invite to every guide footer.

---

## 2026-11-09

**Setup**

- First published setup pack.
- Component is distributed as numbered pieces rather than one file. Some
  networks and download managers mangle large single files; pieces download
  reliably and are joined on your machine.
- Added a manifest so setup can confirm every piece arrived intact.

**Guides**

- PC, PlayStation and Xbox walkthroughs.
