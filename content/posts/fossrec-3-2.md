---
title: "FossRec 3.2: Lock, Split, Widgets and Still No Internet"
date: 2026-11-03T07:00:00+01:00
description: "FossRec 3.2 adds an optional fingerprint lock, automatic splitting of long recordings, home-screen widgets, theme and language choice, and metadata scrubbing."
draft: false
---

A few months ago I introduced [FossRec](/posts/fossrec-torii/), my minimal Android audio recorder that minds its own business. Version 3.2 is out, and it's the biggest update so far. The rule stayed the same: **no internet permission, no account, no cloud, no tracking.** Everything below happens on your phone and nowhere else.

## Split Long Recordings Automatically

Some speech-to-text tools reject files above 100 MB, or just work better on shorter ones. In **Settings → Recording**, FossRec can now cut a recording into several files *without ever stopping it*.

- Split by **file size**: 25, 50, **100**, 200 or 500 MB
- Split by **duration**: 5, 10, **15**, 30 or 60 minutes
- Both are off by default and can be combined: the first limit reached wins

When a limit is hit, the current part is saved and the next one starts right away. There may be a gap of a fraction of a second at the cut, which is honest physics and not a bug. Parts are named `Recording_<date>_part01.m4a`, `_part02`, and so on, and the list shows them **linked together**: one header with the number of parts, total duration and size, and the parts hanging below it on a vertical line. One tap on the trash icon deletes them all.

For reference, at the default bitrate 100 MB is about 69 minutes of audio.

## Optional Fingerprint Lock

Turn it on in **Settings → Security & privacy** and FossRec asks for your fingerprint, face unlock or screen lock every time you open it, and locks again whenever you leave. Turning it *off* also requires your fingerprint, so nobody can quietly remove it while you're getting coffee.

One caveat, stated plainly because it matters: the lock protects the **app screen**, not the files. They are not encrypted. Someone who can unlock your phone and plug it into a computer can still reach them.

## Widgets

Two home-screen widgets, because starting a recording should take one tap, not four:

- **FossRec · Mini** (1×1): a single start/stop button with a tiny timer
- **FossRec · Large** (4×2): big timer, status, **pause/resume** and start/stop

If the microphone permission is missing, the button opens the app so you can grant it. And if the lock is enabled, starting from a widget does not unlock anything.

## Theme and Language

Pick **Auto**, **Light** or **Dark** in **Settings → Appearance**. Auto follows your phone's dark mode and, on Android 12 and later, your wallpaper colors (Material You). You can also choose the app language: English, French, or whatever your phone uses.

## No Metadata Left Behind

Android's recorder quietly embeds a creation date and the Android version inside M4A files. FossRec now **erases both** as soon as a recording is saved, without touching the audio. It never asks for location access and never writes GPS data. What remains is the file name (which contains the date and time) and the file's modification date, so rename a file before sharing it if that matters to you.

## Smaller Things

- The list **refreshes by itself** when you stop a recording; split parts appear as soon as they start
- **Swipe a recording** left or right to delete it, always with a confirmation first
- First-launch **legal notice**: recording people without their consent is illegal in many countries, and you have to tick "I have read and understood" to continue
- New logo, signed release builds, and updated Android Gradle plugin and Gradle wrapper

## Still Tested on One Phone

Pixel 7 Pro. If it works on yours, great. If not, it works on mine.

Source, screenshots and releases: [github.com/nthnbch/FossRec](https://github.com/nthnbch/FossRec)
