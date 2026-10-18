<p align="center">
  <img src="Packaging/Sleeve-icon.png" width="128" alt="Sleeve icon">
</p>

<h1 align="center">Sleeve</h1>

<p align="center">
  <b>A menu bar manager for macOS: your apps stay out of sight until you hover the bar.</b><br>
  Native hiding on macOS 27 · menu bar colours and gradients · 20 icon styles.
</p>

<p align="center">
  🤝 <b>Made to be compatible with <a href="https://github.com/zaineldinbarakat-droid/spindle">Spindle</a></b>, my notch turntable — use them together, or each on its own.
</p>

<p align="center">
  <a href="https://github.com/zaineldinbarakat-droid/sleeve/releases/latest"><img alt="Latest release" src="https://img.shields.io/github/v/release/zaineldinbarakat-droid/sleeve?label=release&color=6b54ed"></a>
  <img alt="macOS 14+" src="https://img.shields.io/badge/macOS-14%2B-black?logo=apple">
  <img alt="Swift 6" src="https://img.shields.io/badge/Swift-6-F05138?logo=swift&logoColor=white">
  <img alt="SwiftUI + AppKit" src="https://img.shields.io/badge/UI-SwiftUI%20%2B%20AppKit-0A84FF">
  <img alt="Apple Silicon" src="https://img.shields.io/badge/Apple%20Silicon-native-555">
  <a href="LICENSE"><img alt="MIT License" src="https://img.shields.io/badge/license-MIT-3da639"></a>
  <a href="https://github.com/zaineldinbarakat-droid/spindle"><img alt="Works with Spindle" src="https://img.shields.io/badge/works%20with-Spindle-e8735b"></a>
</p>

<p align="center">
  <a href="https://github.com/zaineldinbarakat-droid/sleeve/releases/latest/download/Sleeve.zip"><b>⬇︎ Download Sleeve</b></a>
  &nbsp;·&nbsp;
  <a href="#made-to-be-compatible-with-spindle">Works with Spindle</a>
  &nbsp;·&nbsp;
  <a href="#under-the-hood">Under the hood</a>
</p>

<details>
<summary><b>🇩🇪 Auf Deutsch lesen</b></summary>

### Sleeve – ein Menüleisten-Manager für macOS

Sleeve räumt deine Menüleiste auf: Deine Apps bleiben verborgen, bis du mit der Maus über die Leiste fährst.

- **Alles verbergen bis zum Hovern:** Die Menüleiste zeigt nur Sleeve und Apples eigene Symbole. Fährst du darüber, erscheinen deine Apps sofort – fährst du weg, verschwinden sie wieder.
- **Echtes Ausblenden unter macOS 27:** Sleeve nutzt die systemeigene Einschränkung der Menüleiste, sodass ausgeblendete Symbole wirklich Platz freigeben.
- **Für jede App einstellbar:** *Immer* sichtbar, *beim Hovern* sichtbar oder *versteckt* in einem eigenen Bereich.
- **Farben und Verläufe** für die Menüleiste, **20 Icon-Stile** (auch jedes beliebige Emoji), Zen-Modus, Suche, Tastenkürzel und Automationen.
- **Leichtgewichtig:** Im Leerlauf nur ca. 0,1 % CPU und 15 MB Arbeitsspeicher.
- **Kompatibel mit [Spindle](https://github.com/zaineldinbarakat-droid/spindle):** Beide Apps sind aufeinander abgestimmt – sie teilen sich den oberen Bildschirmrand, öffnen nie gleichzeitig, und die Menüleiste kann die Farbe des Songs in Spindle übernehmen. Jede App funktioniert aber auch allein.

**Installation:** [Sleeve.zip herunterladen](https://github.com/zaineldinbarakat-droid/sleeve/releases/latest/download/Sleeve.zip), entpacken und in **Programme** ziehen (dort muss Sleeve liegen). Beim ersten Start unter **Systemeinstellungen → Datenschutz & Sicherheit** auf **Trotzdem öffnen** klicken und Sleeve den Zugriff auf **Bedienungshilfen** erlauben. Danach das Sleeve-Symbol einmal mit gedrückter ⌘-Taste rechts neben deine Apps ziehen. Voraussetzung: Mac mit Apple-Chip und macOS 14 oder neuer. Sleeve aktualisiert sich selbst.

</details>

<table align="center">
  <tr>
    <td align="center"><b>Apps tucked away</b><br><img src="docs/images/bar-hidden.png" alt="The menu bar with only Sleeve's icon and Apple's icons"></td>
  </tr>
  <tr>
    <td align="center"><b>Hover the bar — they're back</b><br><img src="docs/images/bar-revealed.png" alt="The menu bar with apps revealed to the left of Sleeve's icon"></td>
  </tr>
</table>

## Features

- **Hide everything until you hover.** The menu bar shows only Sleeve and Apple's own icons; hover the bar and your apps appear right where they belong, move away and they're gone — instantly, with no delay. Clicking never hides anything, and an open menu or popover keeps everything in place.
- **Real hiding on macOS 27.** Sleeve uses macOS's own menu bar restriction, so hidden icons truly leave the bar and free their space (with a safe fallback if the system ever says no).
- **Per-app placement.** Each app is *Always* shown, shown *On Hover*, or *Hidden* — tucked into a hidden section, along with anything macOS couldn't fit, that opens from a two-finger click on the bar.
- **Menu bar colour, the Ice way.** Solid colours, gradients you build by hand, ready-made palettes, an *Album* look that follows the song in Spindle, plus shapes, shadows and borders — all with a live preview.
- **20 icon styles** that go from empty to full as your apps appear — eye, heart, moon, tray, battery, … or **any emoji** (grey while hidden, full colour while showing).
- **And more.** Adjustable spacing between icons, menu bar search (⌃⌥⌘S), Zen mode that clears the whole bar, rebindable hotkeys, and automation rules (battery level, Wi-Fi network, Focus, or a script).
- **Featherweight.** Idle, about **0.1 % CPU and 15 MB**.

<p align="center">
  <img src="docs/images/sleeve-icons.png" width="49%" alt="Sleeve's icon styles">
  <img src="docs/images/sleeve-appearance.png" width="49%" alt="Sleeve's menu bar colour settings with a live preview">
</p>

## Made to be compatible with Spindle

Sleeve and [**Spindle**](https://github.com/zaineldinbarakat-droid/spindle) — a retro turntable that lives in your MacBook's notch — were designed as a pair:

- **They share the top of the screen politely.** Spindle tells Sleeve where its notch pill and panel are, and Sleeve keeps its hover zone and menu bar colouring out of that area — hovering the notch opens Spindle, never your hidden apps.
- **One dropdown at a time.** Opening Sleeve's hidden-section drawer closes Spindle's panel, and the other way round.
- **Zen mode covers both.** Sleeve's Zen mode can hide Spindle's pill too, for a completely clean top edge.
- **The menu bar can match the music.** The *Album* colour tints your menu bar with the song playing in Spindle.
- **Tidy icons.** When Spindle starts, Sleeve briefly makes room so Spindle's icon lands next to your other apps.

All of it is in Sleeve's **Settings → Spindle** tab. Each app works fully on its own; together they feel like one. → [**Get Spindle**](https://github.com/zaineldinbarakat-droid/spindle/releases/latest/download/Spindle.zip)

## Install

1. [Download **Sleeve.zip**](https://github.com/zaineldinbarakat-droid/sleeve/releases/latest/download/Sleeve.zip), unzip it and drag **Sleeve** into **Applications** — it must live there to hide icons on macOS 27.
2. Sleeve isn't notarized by Apple yet, so the first launch is blocked: open **System Settings → Privacy & Security** and click **Open Anyway** — or run once in Terminal:
   ```bash
   xattr -dr com.apple.quarantine /Applications/Sleeve.app
   ```
3. Give Sleeve **Accessibility** access when asked — it needs it to find and arrange menu bar icons.
4. Hover the menu bar to show your apps, then **⌘-drag Sleeve's icon** once to the right of them, next to Wi-Fi, so it stays put while apps come and go.

**Requires** a Mac with Apple Silicon and macOS 14 Sonoma or later; native hiding needs macOS 27. Sleeve **updates itself** from this repository.

## Under the hood

**Hiding menu bar icons on macOS 27.** Classic menu bar managers push icons off-screen with a 10 000 pt divider. macOS 27 moved status item layout into a system process (MenuBarAgent) that caps item width and ignores synthesized ⌘-drags, so that trick no longer works. Sleeve uses the private `MenuBarClientCore` restriction behind macOS's exam mode: it hands MenuBarAgent an allow-list and the system removes and reflows everything else. The bridge is a small Objective-C target that resolves everything at runtime, catches exceptions and **fails open** — if the API is missing, Sleeve falls back to covering icons rather than leaving them hidden.

**Seeing every mouse move.** NSEvent's global monitors only receive events meant for *other* apps, so hover silently died whenever Sleeve itself had focus. Sleeve uses a passive, listen-only **CGEventTap** instead, which sees everything without ever delaying input.

**A menu that doesn't lag.** On macOS 27 a status item's menu is tracked together with MenuBarAgent, which waits on the app while the app's main thread is held by the open menu — every move through it stalled. Sleeve's menu is placed by screen position instead, involving only Sleeve.

**Performance as a feature.** Reading every app's menu bar meant Accessibility round-trips to 124 processes — about 2 s of work — every 3 s. Sleeve now does a full scan only when apps launch or quit (and once a minute), skips background-only processes, and otherwise re-reads just the ~10 apps that own icons.

| Idle, measured | Before | After |
| --- | --- | --- |
| CPU | ~2 % | **0.0–0.1 %** |
| Memory | 50 MB | **15 MB** |

**Self-updating.** Sleeve checks `updates/latest.json` in this repository, downloads its zip, verifies the bundle identifier and code signature, swaps itself atomically and relaunches. Builds are signed with a designated requirement pinned to the bundle identifier, so the Accessibility grant survives updates.

## Build from source

Requires **Xcode** (SwiftUI's macros ship only inside Xcode, so the Command Line Tools alone aren't enough).

```bash
git clone https://github.com/zaineldinbarakat-droid/sleeve.git
cd sleeve
./install.sh          # builds Sleeve and installs it in /Applications
```

`build.sh` assembles the `.app`, `release.sh <version> "<notes>"` packages an update, and the icon is drawn in code by `Packaging/make-icons.swift`.

```
Sources/
├── Sleeve/
│   ├── Core/             AX scanner, sections, native hiding, event tap, gestures, hotkeys, automation
│   ├── Appearance/       the menu bar style model and overlay
│   └── UI/               settings, hidden-section drawer, search, Zen mode, emoji icons
├── MenuBarVisibility/    Objective-C bridge to macOS 27's menu bar restriction
└── SpindleSync/          shared with Spindle: the sync channel and the self-updater
```

## Limitations

- **Not notarized yet** — see [Install](#install) for the one-time step.
- macOS doesn't let apps choose where their own menu bar icon goes, so Sleeve asks for one ⌘-drag to keep its icon on the right.
- macOS's native hiding always hides Apple's *Now Playing* icon along with the apps.

See the [changelog](CHANGELOG.md) for the full history.

## License

[MIT](LICENSE) © 2026 Zaineldein Barakat

<p align="center"><sub>Designed and built by <a href="https://github.com/zaineldinbarakat-droid">Zaineldein Barakat</a> · also by me: <a href="https://github.com/zaineldinbarakat-droid/spindle">Spindle</a>, the notch turntable made to work with Sleeve.</sub></p>
