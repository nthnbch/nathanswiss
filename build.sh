#!/bin/bash

# This script loads environment variables and launches Hugo

# Load environment variables from .env
if [ -f .env ]; then
  echo "Loading environment variables from .env"
  export $(grep -v '^#' .env | xargs)
else
  echo ".env file not found. Use .env.example as a template."
  exit 1
fi

# Create temporary config.toml with environment variable values
# Note: using sed to replace the empty google_analytics_id value with the environment variable
if [ ! -z "$HUGO_GOOGLE_ANALYTICS_ID" ]; then
  sed -i'' -e "s/google_analytics_id = \"\"/google_analytics_id = \"$HUGO_GOOGLE_ANALYTICS_ID\"/" config.toml
  echo "Google Analytics ID injected from environment variable"
fi

# Launch Hugo with the arguments passed to the script
echo "Launching Hugo..."
hugo "$@"

# Restore the original config.toml after Hugo execution
git checkout -- config.toml

echo "Done!"
