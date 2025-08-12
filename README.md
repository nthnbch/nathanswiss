# Nathan Swiss - Personal Website

This repository contains the source code for my personal website [nathan.swiss](https://nathan.swiss).

## Technologies Used

- [Hugo](https://gohugo.io/) - Static site generator
- Theme: [Hugo Winston Theme](https://github.com/zerostaticthemes/hugo-winston-theme/)

## Project Structure

- `content/` : Articles and pages
- `layouts/` : Custom layouts
- `static/` : Static resources (images, etc.)
- `themes/` : Hugo Winston theme (included as a Git submodule)
- `config.toml` : Site configuration

## Google Analytics Configuration

To add your Google Analytics ID:

1. Open the `config.toml` file
2. Find the line `google_analytics_id = ""`
3. Replace the empty quotes with your Google Analytics ID: `google_analytics_id = "UA-XXXXXXXX-X"`

That's it! When you build the site with Hugo, your Google Analytics tracking code will be automatically included.
