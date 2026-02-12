---
title: "How to Export Your Tabs from Arc Browser and Import Them into Zen Browser (Step-by-Step Guide)"
date: 2026-02-12T10:00:00+01:00
description: "The complete guide to transfer your tabs, bookmarks, and data from Arc Browser to Zen Browser using arc-export. Move from Arc to Zen in minutes."
draft: false
---

**TL;DR**: Arc Browser is abandoned (or close to it). Here's exactly how I exported all my tabs from Arc and imported them into Zen Browser using a free open-source tool called arc-export. The whole process takes about 5 minutes.

## Arc Browser Is Abandoned — Now What?

Let's not sugarcoat it. Arc Browser, the browser I [fell in love with in 2022](/posts/arc) and then [reluctantly left in early 2025](/posts/zen), is effectively abandoned. The Browser Company shifted its entire focus to Dia, their new AI-driven project, and Arc has been on life support ever since. No new features, just the occasional maintenance patch to keep the lights on.

If you're reading this, you're probably an ex-Arc user who's already made the decision to switch, or you're about to. And if you've landed on Zen Browser as your next home (smart choice), the big question is: **how do you actually transfer your tabs and bookmarks from Arc to Zen?**

Because Arc, in its infinite wisdom, never built a proper export feature. Classic.

## The Problem: Arc Doesn't Let You Export Your Tabs

This is the part that frustrated me the most. You'd think a modern browser would have a simple "Export Bookmarks" button somewhere. Chrome has it. Firefox has it. Even Edge has it. But Arc? Nope. Your pinned tabs, your carefully organized spaces, your whole browsing life — locked inside Arc with no official way out.

I spent an embarrassing amount of time looking for a hidden export option. There isn't one. If you're searching for "Arc Browser export tabs" or "Arc Browser export bookmarks," save yourself the trouble: it doesn't exist natively.

## The Solution: arc-export (A Free Open-Source Tool)

This is where [arc-export](https://github.com/ivnvxd/arc-export) saved my life. It's a simple Python script that reads Arc's internal data file (`StorableSidebar.json`) and converts your pinned tabs into a standard HTML bookmarks file that any browser can import — including Zen.

The tool has over 1,200 stars on GitHub, which tells you just how many people have faced this exact problem.

### What You Need

- A Mac (Arc stores its data differently on macOS)
- Python 3 installed (it comes pre-installed on most Macs)
- Arc Browser still installed (we need its data files)
- About 5 minutes of your time

### Step 1: Download arc-export

Open your terminal and run:

```bash
curl -o main.py https://raw.githubusercontent.com/ivnvxd/arc-export/main/main.py
```

Or if you prefer cloning the whole repository:

```bash
git clone git@github.com:ivnvxd/arc-export.git
cd arc-export
```

### Step 2: Run the Script

```bash
python3 main.py -v
```

The `-v` flag gives you verbose output so you can see exactly what's being exported. The script automatically finds Arc's data in `~/Library/Application Support/Arc/StorableSidebar.json` and converts everything.

If you want to specify a custom output path:

```bash
python3 main.py -v -o my_arc_bookmarks.html
```

### Step 3: Check Your Exported File

The script generates an HTML bookmarks file with a timestamp (something like `bookmarks_2026-02-12.html`). Open it in any text editor to verify your tabs are all there. You'll see your spaces, pinned tabs, and folders preserved in the standard Netscape Bookmark format.

### Step 4: Import into Zen Browser

Now the easy part:

1. Open **Zen Browser**
2. Press `Ctrl+Shift+O` (or `Cmd+Shift+O` on Mac) to open the Bookmarks Manager
3. Click the **Import and Backup** menu (the icon with arrows)
4. Select **Import Bookmarks from HTML**
5. Choose the HTML file you just exported
6. Done — your Arc tabs are now in Zen

Your folders and structure should be preserved. Zen handles the Netscape Bookmark format beautifully, and since it's built on Firefox, the import engine is rock solid.

## Zen Browser Also Has a Direct Arc Import Feature

Here's something I discovered after going through the manual export process: Zen Browser actually has a **built-in Arc import option** in its migration wizard. When you first install Zen (or go to Settings → Import), you can directly import from Arc Browser.

Honestly? I'd recommend trying the direct import first. It worked well for basic bookmarks and history. But if you want complete control over what gets transferred, or if the direct import misses some of your pinned tabs (which happened to me with a few deeply nested spaces), the arc-export method above is your safety net.

## Why Zen Browser Is the Best Home for Ex-Arc Users

I've written about [why I switched to Zen](/posts/zen) and about [how browsers are evolving in 2025](/posts/zen-folders), but let me quickly summarize why Zen is specifically great for people coming from Arc:

1. **Vertical tabs by default** — If you loved Arc's sidebar tabs, Zen feels immediately familiar.
2. **Workspaces** — Zen's workspace system is similar to Arc's Spaces, and arguably more flexible.
3. **Privacy-first** — Built on Firefox, not Chromium. Your data stays yours.
4. **Active development** — Unlike Arc, Zen has a transparent roadmap and regular updates. The project is alive and thriving.
5. **Lightweight** — Noticeably faster than Arc, especially with many tabs open.

## Troubleshooting Common Issues

**"The script can't find StorableSidebar.json"**

Manually copy the file from `~/Library/Application Support/Arc/` to the same directory as `main.py`, then run the script again.

**"Some of my tabs are missing from the export"**

The arc-export tool only exports **pinned tabs**, not ephemeral/unpinned ones. If you have important unpinned tabs, pin them in Arc first before running the export.

**"Zen's direct import doesn't show Arc as an option"**

Make sure Arc is still installed on your system. Zen needs to detect Arc's profile data to offer the import option. If it still doesn't appear, use the arc-export HTML method instead — it always works.

**"My folder structure looks different after import"**

Arc organizes tabs into Spaces, while Zen uses bookmark folders. The mapping isn't always 1:1, but your data is all there. You might need to reorganize a few folders manually, which takes a couple of minutes.

## Is Arc Browser Still Good in 2026?

Honestly? Arc still *works*. The browser itself is stable and the core features remain solid. But "still works" isn't the same as "still good." There have been no meaningful feature updates in over a year. The Windows version never left beta. The mobile apps are frozen in time. And The Browser Company's attention is entirely on Dia.

If you're still using Arc and it works for you, there's no urgent reason to panic. But if you're making a decision today about which browser to invest your time in, Arc is not the horse I'd bet on. Zen is where the momentum, the community, and the innovation are right now.

## The Bottom Line

Moving from Arc to Zen Browser doesn't have to be painful. Between Zen's built-in import and the arc-export tool, you can transfer your entire browsing life in under 5 minutes. I did it, thousands of others have done it, and you can too.

The browser that once felt like the future is now the past. Time to find your Zen.
