# Changelog

All notable changes to Sleeve.

## 0.6.1 — Lighter at rest
- **Lighter on the battery:** Sleeve re-reads the menu bar every 3 s while the cursor is up at it and every 9 s otherwise (it was every 3 s always), not at all while the display sleeps, and asks every running app about icons every 3 minutes instead of every minute. Apps launching or quitting still trigger a fresh scan straight away. Idle, it now sits at about 0.04 % CPU.
- A closed Settings window lets go of its views: they used to redraw every icon after each scan with nobody looking.

## 0.6.0 — Its own repository
- Sleeve now lives in its own repository and updates from it. Its companion notch player, [Spindle](https://github.com/zaineldinbarakat-droid/spindle), has its own too; the two still work together.

## 0.5.0 — Lightweight
- **Very light:** idle, ~0.1 % CPU and 15 MB. Sleeve only scans every app's menu bar when apps launch or quit; otherwise it re-reads the few that own icons.

## 0.4.0
- The two-finger-click menu opens instantly at the click.
- Hover works whichever app is in front (passive event tap).
- 12 new icon styles and an **Emoji** style: any emoji, grey while hidden, full colour while showing.

## 0.3.9
- Sleeve's icon sits on the right with your apps; clicks never hide apps; adjustable icon spacing.
- Hovering Spindle's notch never triggers Sleeve; Spindle's icon lands beside the other apps.

## 0.3.8
- Friendlier menu bar colour settings: live preview, quick looks, palettes, *Album* colour.

## 0.3.6 – 0.3.7
- Apps appear in the bar itself on hover; a real hidden section; per-app *Always / On Hover / Hidden* placement.

## 0.3.0 – 0.3.5
- Self-updating from this repository.
- Steady, zero-delay hover; an animated icon and menu; menu bar tint drawn over the bar; Siri no longer flickers.

## 0.2 — First release
- A menu bar manager made to work with [Spindle](https://github.com/zaineldinbarakat-droid/spindle): native macOS 27 hiding, hide-all-until-hover, gradients, Zen mode, search, hotkeys and automation.
