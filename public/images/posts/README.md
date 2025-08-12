# Image Directory for Blog Posts

Place images used in your blog posts here.

## Usage in Markdown Articles

In your article frontmatter, reference images as follows:

```yaml
---
title: "Article Title"
date: 2024-08-12
description: "Article Description"
image: images/posts/your-image-name.jpg  # Relative path from static/
imageAltAttribute: Alternative description of the image
---
```

## Recommended Organization

For better organization, you can create subfolders for each article:

```
static/
  images/
    posts/
      article1/
        image1.jpg
        image2.png
      article2/
        banner.jpg
        ...
```

Then reference these images in your articles as:
`image: images/posts/article1/image1.jpg`
