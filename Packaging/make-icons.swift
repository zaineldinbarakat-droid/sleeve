// Draws Sleeve's app icon and writes Packaging/Sleeve.icns.
//
//   swift Packaging/make-icons.swift
//
// Drawn in code on the macOS icon grid — an 824 pt continuous-corner tile on
// a 1024 pt canvas.
import AppKit
import SwiftUI

let packaging = URL(fileURLWithPath: #filePath).deletingLastPathComponent()

// MARK: - Shared pieces

/// The macOS tile: continuous corners, a soft drop shadow, a faint top highlight.
struct Tile<Content: View>: View {
    var colors: [Color]
    @ViewBuilder var content: Content

    var body: some View {
        let shape = RoundedRectangle(cornerRadius: 185, style: .continuous)
        ZStack {
            shape.fill(LinearGradient(colors: colors, startPoint: .top, endPoint: .bottom))
            content
            // Glassy sheen across the top half, the hallmark of emoji-style art.
            shape.fill(LinearGradient(colors: [.white.opacity(0.22), .clear],
                                      startPoint: .top, endPoint: .center))
            shape.strokeBorder(.white.opacity(0.18), lineWidth: 3)
        }
        .frame(width: 824, height: 824)
        .clipShape(shape)
        .shadow(color: .black.opacity(0.35), radius: 22, y: 14)
        .frame(width: 1024, height: 1024)
    }
}

struct Record: View {
    var size: CGFloat
    var label: [Color]

    var body: some View {
        ZStack {
            Circle().fill(RadialGradient(colors: [Color(white: 0.18), Color(white: 0.04)],
                                         center: .center, startRadius: size * 0.1, endRadius: size * 0.5))
            // Grooves.
            ForEach(0..<9) { i in
                Circle()
                    .stroke(Color.white.opacity(i % 2 == 0 ? 0.07 : 0.035), lineWidth: size * 0.006)
                    .frame(width: size * (0.92 - CGFloat(i) * 0.055), height: size * (0.92 - CGFloat(i) * 0.055))
            }
            // Two-lobed sheen, the look of a glossy record under a lamp.
            Circle().fill(AngularGradient(gradient: Gradient(stops: [
                .init(color: .white.opacity(0), location: 0),
                .init(color: .white.opacity(0.22), location: 0.12),
                .init(color: .white.opacity(0), location: 0.25),
                .init(color: .white.opacity(0), location: 0.5),
                .init(color: .white.opacity(0.16), location: 0.62),
                .init(color: .white.opacity(0), location: 0.75),
                .init(color: .white.opacity(0), location: 1)
            ]), center: .center))
            Circle().fill(LinearGradient(colors: label, startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: size * 0.36, height: size * 0.36)
                .overlay(Circle().stroke(Color.black.opacity(0.25), lineWidth: size * 0.008))
            Circle().fill(Color(white: 0.1)).frame(width: size * 0.045, height: size * 0.045)
        }
        .frame(width: size, height: size)
        .shadow(color: .black.opacity(0.45), radius: size * 0.04, y: size * 0.02)
    }
}

// MARK: - Sleeve: a menu bar, half tucked away

/// Flat and quiet on purpose: a white menu-bar capsule with a divider — faded dots
/// for the apps Sleeve keeps hidden, solid dots for the ones on show.
struct SleeveIcon: View {
    private let violet = Color(red: 0.42, green: 0.33, blue: 0.93)

    var body: some View {
        Tile(colors: [Color(red: 0.62, green: 0.55, blue: 1.00), Color(red: 0.38, green: 0.29, blue: 0.88)]) {
            ZStack {
                Capsule(style: .continuous)
                    .fill(Color.white)
                    .frame(width: 620, height: 190)
                    .shadow(color: Color(red: 0.15, green: 0.1, blue: 0.45).opacity(0.35), radius: 30, y: 18)
                HStack(spacing: 44) {
                    Circle().fill(violet.opacity(0.22)).frame(width: 64, height: 64)
                    Circle().fill(violet.opacity(0.22)).frame(width: 64, height: 64)
                    Capsule().fill(violet.opacity(0.35)).frame(width: 10, height: 96)
                    Circle().fill(violet).frame(width: 64, height: 64)
                    Circle().fill(violet).frame(width: 64, height: 64)
                }
            }
        }
    }
}

// MARK: - Rendering

@MainActor
func png<V: View>(_ view: V, size: Int) -> Data? {
    let renderer = ImageRenderer(content: view.frame(width: 1024, height: 1024))
    renderer.scale = CGFloat(size) / 1024
    guard let cg = renderer.cgImage else { return nil }
    return NSBitmapImageRep(cgImage: cg).representation(using: .png, properties: [:])
}

@MainActor
func makeIcon<V: View>(_ view: V, name: String) throws {
    let iconset = FileManager.default.temporaryDirectory.appendingPathComponent("\(name).iconset")
    try? FileManager.default.removeItem(at: iconset)
    try FileManager.default.createDirectory(at: iconset, withIntermediateDirectories: true)
    for base in [16, 32, 128, 256, 512] {
        for scale in [1, 2] {
            let suffix = scale == 2 ? "@2x" : ""
            guard let data = png(view, size: base * scale) else { throw CocoaError(.fileWriteUnknown) }
            try data.write(to: iconset.appendingPathComponent("icon_\(base)x\(base)\(suffix).png"))
        }
    }
    if let preview = png(view, size: 512) {
        try preview.write(to: packaging.appendingPathComponent("\(name)-icon.png"))
    }
    let iconutil = Process()
    iconutil.executableURL = URL(fileURLWithPath: "/usr/bin/iconutil")
    iconutil.arguments = ["-c", "icns", iconset.path, "-o", packaging.appendingPathComponent("\(name).icns").path]
    try iconutil.run()
    iconutil.waitUntilExit()
    print("\(name).icns:", iconutil.terminationStatus == 0 ? "ok" : "iconutil failed")
}

MainActor.assumeIsolated {
    do {
        try makeIcon(SleeveIcon(), name: "Sleeve")
    } catch {
        print("error:", error)
    }
}
