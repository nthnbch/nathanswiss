# Nathan Swiss - Site Personnel

Ce dépôt contient le code source de mon site personnel [nathan.swiss](https://nathan.swiss).

## Technologies utilisées

- [Hugo](https://gohugo.io/) - Générateur de sites statiques
- Thème : [Hugo Winston Theme](https://github.com/zerostaticthemes/hugo-winston-theme/)

## Structure du projet

- `content/` : Articles et pages du site
- `layouts/` : Mise en page personnalisée
- `static/` : Ressources statiques (images, etc.)
- `themes/` : Thème Hugo Winston (inclus comme sous-module Git)
- `config.toml` : Configuration du site

## Gestion des variables d'environnement et secrets

Ce projet utilise un système de variables d'environnement pour gérer les informations sensibles :

1. Copiez le fichier `.env.example` en `.env`
2. Remplissez les valeurs dans `.env` avec vos propres informations
3. Utilisez le script `build.sh` pour construire le site au lieu de la commande `hugo` directe

**Note** : Le fichier `.env` n'est pas versionné dans Git pour des raisons de sécurité.
