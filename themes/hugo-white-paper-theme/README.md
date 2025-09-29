# Hugo White Paper Theme

A clean, modern Hugo theme inspired by Material You design principles. Built for readability, performance, and elegance.

## Features

- **Material You Design**: Authentic implementation of Google's Material Design 3
- **Clean Typography**: Roboto font family with proper hierarchy
- **Minimal Layout**: Focus on content with subtle visual enhancements
- **Responsive Design**: Optimized for all screen sizes
- **Fast Loading**: Lightweight and optimized assets
- **Accessible**: WCAG compliant color contrasts and navigation

## Color Scheme

- Primary: `#6750a4` (Material You purple)
- Surface: `#fef7ff` (Clean white with subtle tint)
- Text: `#1d1b20` (High contrast dark)
- Links: Always underlined for clarity

## Installation

1. Clone this theme into your `themes/` directory:
   ```bash
   git clone https://github.com/yourusername/hugo-white-paper-theme themes/hugo-white-paper-theme
   ```

2. Update your `config.toml`:
   ```toml
   theme = "hugo-white-paper-theme"
   ```

3. Configure your fonts in `config.toml`:
   ```toml
   [params]
     googleFontsUrl = "https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Roboto+Mono:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;1,100;1,200;1,300;1,400;1,500;1,600;1,700&display=swap"
     fontFamilyHeading = "Roboto"
     fontFamilyParagraph = "Roboto"
     fontFamilyMonospace = "Roboto Mono"
   ```

## Customization

The theme uses CSS custom properties for easy customization. Override these in your own CSS file:

```css
:root {
  --primary: #your-color;
  --surface: #your-surface-color;
  --on-surface: #your-text-color;
}
```

## Development

Built with:
- Hugo static site generator
- SCSS for styling
- Material You design tokens
- Responsive grid system

## License

MIT License - feel free to use and modify for your projects.

**4. Copy the example content**

Copy the entire contents of the `mynewsite/themes/hugo-winston-theme/exampleSite/` folder to root folder of your Hugo site, ie `mynewsite/`. To copy the files using terminal, make sure you are still in the projects root, ie the `mynewsite` folder.

```
cp -a themes/hugo-winston-theme/exampleSite/. .
```

**6. Run Hugo**

After installing the theme for the first time, generate the Hugo site.

You run this command from the root folder of your Hugo site ie `mynewsite`

```
hugo
```

For local development run Hugo's built-in local server.

```
hugo server
```

Now enter [`localhost:1313`](http://localhost:1313) in the address bar of your browser.

# Localhost inside exampleSite

You can run this site without installing it as a hugo theme using the following command. I use this for theme development.

```
hugo server --source=exampleSite --theme=../..
```

# Configuration

### Config options

```toml
# config.toml
[params]
  google_analytics_id = ""
  twitter_handle = "@zerostaticio"
  showAuthorOnHomepage = true
  showAuthorOnPosts = false
  showIntroContentOnHomepage = true
  showPostsOnHomepage = true
  usePaginationOnHomepage = false
  limitPostsOnHomepage = 3 # only used if usePaginationOnHomepage is false
  sortPostsByDateOldestFirst = false
  addDot = true
  addFrame = true
  highlightColor = '#7b16ff'
  baseColor = "#ffffff"
  baseOffsetColor = "#eaeaea"
  headingColor = "#1c1b1d"
  textColor = "#4e5157"
  dotColor = "#7b16ff"
  enableGoogleFonts = true 
  googleFontsUrl = "https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap"
  fontFamilyHeading = "Poppins"
  fontFamilyParagraph = "Helvetica"
  fontFamilyMonospace = "monospace"
```

### Google Analytics

Add your google analytics ID to the `config.toml`

```toml
# config.toml
[params]
  google_analytics_id="UA-132398315-1"
```

### Plausible Analytics

Add your plausible analytics domain to the `config.toml`.
This is `data-domain` in your [tracking script code](https://plausible.io/docs/plausible-script).

```toml
# config.toml
[params]
  plausible_analytics_domain = "example.com"
```

# Deploying to Netlify

[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/zerostaticthemes/hugo-winston-theme)

This theme includes a `netlify.toml` which is [configured to deploy to Netlify](https://discourse.gohugo.io/t/deploy-your-theme-to-netlify/15508) from the `exampleSite` folder. If you have installed this theme into a new Hugo site and the exampleSite folder was copied or removed, you should delete the `netlify.toml` file.


### More Hugo Themes by Zerostatic

- [Hugo Hero](https://github.com/zerostaticthemes/hugo-hero-theme) - Open-source business theme
- [Hugo Whisper](https://github.com/zerostaticthemes/hugo-whisper-theme) - Open-source documentation theme
- [Hugo Serif](https://github.com/zerostaticthemes/hugo-serif-theme) - Open-source business theme
- [Hugo Winston](https://github.com/zerostaticthemes/hugo-winston-theme) - Open-source blog theme
- [Hugo Advance](https://www.zerostatic.io/theme/hugo-advance/) - Premium advanced multi page business & marketing theme
- [Hugo Paradigm](https://www.zerostatic.io/theme/hugo-paradigm/) - Premium landing page + site builder theme
- [Hugo Lever](https://www.zerostatic.io/theme/hugo-lever/) - Premium personal / bio theme
- [Hugo Shard](https://www.zerostatic.io/theme/hugo-lever/) - Premium SAAS / landing page theme

### Find hundreds more Hugo themes on Built At Lightspeed

[<img alt="Built At Lightspeed Hugo themes directory screenshot" width="400px" src="https://www.zerostatic.io/images/builtatlightspeed-hugo-themes.jpg" />](https://builtatlightspeed.com/category/hugo)
