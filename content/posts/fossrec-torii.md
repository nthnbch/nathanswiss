---
title: "FossRec & Torii: Two New Little Projects"
date: 2026-04-30T07:00:00+02:00
description: "A minimal Android audio recorder and a macOS Tor client walk into a GitHub repo."
draft: false
---

Two new repos just landed on my GitHub. One records audio. The other routes your entire Mac through the Tor network. Naturally, they have absolutely nothing in common, except that I built both of them because the existing options were either bloated, suspicious, or both.

## FossRec: An Audio Recorder That Minds Its Own Business

Every audio recorder on the Play Store seems to think it needs internet access, an account, and probably your firstborn's biometric data. I tried a dozen of them. They all had at least one fatal flaw: unnecessary permissions, silent uploads, mandatory accounts, or hidden telemetry. So I did what any reasonable person would do: I wrote my own.

**FossRec** is a minimal, private Android audio recorder. It does exactly one thing: record audio from the microphone and save it locally on the device.

That's it. No internet permission. No account. No cloud. No tracking. No "we value your privacy" banner hiding a 33-page data policy.

### Built With

- Kotlin
- Android native (no third-party SDKs)
- Gradle Kotlin DSL

Tested on Pixel 7 Pro only. If it works on your phone, congratulations. If it doesn't, well, it works on mine.

The source code is intentionally minimal. There's nothing clever going on under the hood, and that's the entire point. The most interesting thing about FossRec is everything it *doesn't* do.

Check it out: [github.com/nthnbch/FossRec](https://github.com/nthnbch/FossRec)

---

## Torii: One-Click Tor for macOS

This one is a different beast entirely. **Torii** is a macOS menu bar app that connects your Mac to the Tor network with a single click. It configures a system-wide SOCKS5 proxy, routes all your traffic through the onion network, and sits quietly in your menu bar showing you live stats.

I'll be honest: a significant chunk of Torii was vibe-coded. And by "vibe-coded," I mean I sat down with an AI coding assistant (hello, that's me waving from the other side of the prompt) and we built it together in a feverish back-and-forth of SwiftUI views and Tor control socket parsing. Pure vibes, pure `tor`. The kind of project where you type "make it work" and somehow, against all odds, it does.

### Features

- One-click connect/disconnect, starts and stops the bundled Tor process
- System-wide SOCKS proxy, automatically configures macOS network settings to route traffic through `127.0.0.1:9050`
- Live status: bootstrap progress, exit node (IP, country flag, relay nickname)
- Bandwidth monitor: real-time download/upload speeds
- Exit country picker: request a specific country for the exit relay
- Auto-update check: compares the bundled Tor version against the Tor Project release index
- Login item: optional launch at login via `SMAppService`

### How Traffic Is Routed

When Torii is connected, all network traffic on your Mac goes through the Tor network via the system-wide SOCKS5 proxy. Each hop only knows its immediate neighbours. The exit relay sees the destination but not your real IP. Torii configures the proxy via `networksetup` on connect and removes it on disconnect.

### Built With

- Swift (100%)
- SwiftUI
- XcodeGen for project generation
- Bundled Tor 15.0.11 binaries (aarch64)

### Project Structure

The architecture is clean (surprisingly, given the vibes involved): `TorManager` handles the Tor process lifecycle, `TorControlSocket` speaks the Tor control protocol, `TorParser` decodes async events, `TorViewModel` ties it all together as an `@MainActor` ObservableObject, and `UpdateChecker` pings the Tor Project's release index.

### Privacy

Torii does not collect or transmit any data. All network traffic goes through Tor. The only non-Tor request is a single HTTP call to `https://dist.torproject.org/torbrowser/` to check for version updates.

Check it out: [github.com/nthnbch/torii](https://github.com/nthnbch/torii)

---

## Why Open Source?

Both projects share the same philosophy: do one thing, do it well, don't be creepy about it. 

And yes, before you ask: the irony of building a privacy-focused audio recorder and a Tor client on the same GitHub account is not lost on me. One helps you record things nobody else should hear. The other helps you browse things nobody else should see.
