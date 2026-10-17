<p align="center">
  <img src="../../Packaging/Sleeve-icon.png" width="120" alt="Sleeve icon">
</p>

<h1 align="center">Sleeve</h1>

<p align="center">
  <b>A menu bar manager for macOS: your apps stay out of sight until you hover the bar.</b><br>
  Native hiding on macOS 27 · colours and gradients · 20 icon styles.<br>
  <sub>Made to work hand in hand with <a href="../Spindle/README.md">Spindle</a> — and just as happy on its own.</sub>
</p>

<p align="center">
  <a href="https://github.com/zaineldinbarakat-droid/spindle-and-sleeve/releases/latest/download/Sleeve.zip"><b>⬇︎ Download Sleeve</b></a>
  &nbsp;·&nbsp; macOS 14+ · Apple Silicon · native hiding on macOS 27
</p>

<table align="center">
  <tr>
    <td align="center"><b>Apps tucked away</b><br><img src="../../docs/images/bar-hidden.png" alt="The menu bar with only Sleeve's icon and Apple's icons"></td>
  </tr>
  <tr>
    <td align="center"><b>Hover the bar — they're back</b><br><img src="../../docs/images/bar-revealed.png" alt="The menu bar with apps revealed to the left of Sleeve's icon"></td>
  </tr>
</table>

## What it does

- **Hide everything until you hover.** The menu bar shows only Sleeve and Apple's own icons; hover the bar and your apps appear right where they belong, move away and they're gone — instantly, with no delay. Clicking never hides anything, and an open menu or popover keeps everything in place.
- **Real hiding on macOS 27.** Sleeve uses macOS's own menu bar restriction, so hidden icons truly leave the bar and free their space (with a safe fallback if the system ever says no).
- **Per-app placement.** Each app is *Always* shown, shown *On Hover*, or *Hidden* — tucked into a hidden section, along with anything macOS couldn't fit, that opens from a two-finger click on the bar.
- **Menu bar colour, the Ice way.** Solid colours, gradients you build by hand, ready-made palettes, an *Album* look that follows the song in Spindle, plus shapes, shadows and borders — all with a live preview.
- **20 icon styles** that go from empty to full as your apps appear — eye, heart, moon, tray, battery, … or **any emoji** (grey while hidden, full colour while showing).
- **And more.** Adjustable spacing between icons, menu bar search (⌃⌥⌘S), Zen mode that clears the whole bar, rebindable hotkeys, and automation rules (battery level, Wi-Fi network, Focus, or a script).
- **Light.** Idle, about 0.1 % CPU and 15 MB.

<p align="center">
  <img src="../../docs/images/sleeve-icons.png" width="49%" alt="Sleeve's icon styles">
  <img src="../../docs/images/sleeve-appearance.png" width="49%" alt="Sleeve's menu bar colour settings with a live preview">
</p>

## Made to work with Spindle

Sleeve and [**Spindle**](../Spindle/README.md) (the notch music player) were built as a pair and talk to each other directly:

- **They share the top of the screen politely.** Spindle tells Sleeve where its notch pill and panel are, and Sleeve keeps its hover-to-reveal zone and menu bar colouring out of that area — hovering the notch opens Spindle, never your hidden apps.
- **One dropdown at a time.** Opening Sleeve's hidden-section drawer closes Spindle's panel, and the other way round.
- **Zen mode covers both.** Sleeve's Zen mode can hide Spindle's pill too, for a completely clean top edge.
- **The menu bar can match the music.** The *Album* colour tints your menu bar with the song playing in Spindle.
- **Tidy icons.** When Spindle starts, Sleeve briefly makes room so Spindle's icon lands next to your other apps.

All of it is in Sleeve's **Settings → Spindle** tab. Each app works fully on its own; together they feel like one.

## Install

1. [Download **Sleeve.zip**](https://github.com/zaineldinbarakat-droid/spindle-and-sleeve/releases/latest/download/Sleeve.zip), unzip it and drag **Sleeve** into **Applications** — it must live there to hide icons on macOS 27.
2. Sleeve isn't notarized yet, so the first launch is blocked: open **System Settings → Privacy & Security** and click **Open Anyway** (or run `xattr -dr com.apple.quarantine /Applications/Sleeve.app`).
3. Give Sleeve **Accessibility** access when asked — it needs it to find and arrange menu bar icons.
4. Hover the menu bar to show your apps, then **⌘-drag Sleeve's icon** once to the right of them, next to Wi-Fi, so it stays put while apps come and go.

Sleeve updates itself from this repository.

## Privacy

Sleeve makes no network requests except checking this repository for updates. It doesn't record or send anything about your apps.

---

<p align="center"><sub><a href="../../README.md">← Back to Spindle &amp; Sleeve</a> · Built by <a href="https://github.com/zaineldinbarakat-droid">Zaineldein Barakat</a> · <a href="../../LICENSE">MIT License</a></sub></p>
