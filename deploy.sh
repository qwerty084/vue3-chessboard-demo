#!/bin/bash

npm run build

cd dist
touch _config.yml

echo "include:
  - '_*.js'
" > _config.yml

cd ..

git add dist -f
git commit -m "Deploy to GitHub Pages"
git subtree push --prefix dist origin gh-pages
