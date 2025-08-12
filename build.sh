#!/bin/bash

# Ce script charge les variables d'environnement et lance Hugo

# Charger les variables d'environnement depuis .env
if [ -f .env ]; then
  echo "Chargement des variables d'environnement depuis .env"
  export $(grep -v '^#' .env | xargs)
else
  echo "Fichier .env non trouvé. Utilisez .env.example comme modèle."
  exit 1
fi

# Créer le fichier config.toml temporaire avec les valeurs des variables d'environnement
# Note: ici on utilise sed pour remplacer la valeur vide de google_analytics_id par celle de la variable d'environnement
if [ ! -z "$HUGO_GOOGLE_ANALYTICS_ID" ]; then
  sed -i'' -e "s/google_analytics_id = \"\"/google_analytics_id = \"$HUGO_GOOGLE_ANALYTICS_ID\"/" config.toml
  echo "Google Analytics ID injecté depuis la variable d'environnement"
fi

# Lancer Hugo avec les arguments passés au script
echo "Lancement de Hugo..."
hugo "$@"

# Restaurer le fichier config.toml original après l'exécution de Hugo
git checkout -- config.toml

echo "Terminé!"
