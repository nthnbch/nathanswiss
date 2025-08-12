# Répertoire d'images pour les articles

Placez ici les images utilisées dans vos articles de blog.

## Utilisation dans les articles Markdown

Dans les frontmatter de vos articles, référencez les images comme suit :

```yaml
---
title: "Titre de l'article"
date: 2024-08-12
description: "Description de l'article"
image: images/posts/nom-de-votre-image.jpg  # Chemin relatif depuis static/
imageAltAttribute: Description alternative de l'image
---
```

## Organisation recommandée

Pour une meilleure organisation, vous pouvez créer des sous-dossiers pour chaque article :

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

Puis référencer ces images dans vos articles comme :
`image: images/posts/article1/image1.jpg`
