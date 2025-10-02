---
title: "New Design, New Font, I Did It Again"
date: 2025-10-02T15:20:00+02:00
draft: false
description: "Complete redesign of nathan.swiss with Fraktur typography, Material Design 3, and a brand new Hugo theme now available for everyone."
---

I redesigned my website. Again.

This time, I went all in on typography. The star of the show? **Fraktur**—specifically UnifrakturCook—a gothic blackletter typeface that brings elegance and character to headings. Paired with Inter for body text, the contrast creates a distinctive look that's both traditional and modern.

## The Design System

Built on Material Design 3 principles, the site uses CSS custom properties for colors and maintains a clean, minimal aesthetic. Black (`#000000`) replaced the previous violet scheme, giving everything a sharper, more focused appearance.

The logo transformed into a simple "nb." in Fraktur, lowercase, 28px—understated but memorable.

## SEO & Performance

I went deep on SEO optimization:
- Open Graph meta tags for rich social media previews
- Schema.org structured data (Person type with job details)
- Twitter Cards support
- Comprehensive meta descriptions and keywords

The site builds in under 20ms thanks to Hugo's speed, and the submodule structure keeps the theme separate and maintainable.

## Hugo White Paper Theme

The best part? I packaged everything into a reusable Hugo theme. **Hugo White Paper** is now open source and available on GitHub.

Features:
- Fraktur typography (UnifrakturCook) for headings
- Inter sans-serif for body text
- Material Design 3 color system
- Fully responsive
- SEO optimized out of the box
- MIT licensed

## The Process

The redesign touched every part of the site:
- Typography overhaul (Fraktur + Inter)
- Color scheme shift (violet → black)
- Logo redesign
- Social links from icons to text
- Complete SEO implementation
- Repository cleanup
- Theme extraction and publication

It took several iterations to get the font hierarchy right—making sure h2 and h3 used Inter instead of Fraktur to maintain readability in content while keeping the distinctive Fraktur for main titles.

## Why Redesign Again?

Because I can. Because design is never finished. Because I learned a ton about Hugo theme development, git submodules, and typography in the process.

The site reflects my taste better now—minimal, typographically focused, technically solid. And by open-sourcing the theme, maybe it helps someone else build something cool.

Check it out: [github.com/nthnbch/hugo-white-paper-theme](https://github.com/nthnbch/hugo-white-paper-theme)
