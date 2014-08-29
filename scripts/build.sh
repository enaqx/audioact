#!/bin/bash
# Script invoked by "npm run build" process

# Remove old assets folder
rm -rf assets

# Create new one
mkdir assets

# Build js file from app folder and uglifying it 
# and put it in assets folder
NODE_ENV=production browserify ./app/app.js | \
  uglifyjs -cm 2>/dev/null > ./assets/bundle.js
