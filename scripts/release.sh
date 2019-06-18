#!/bin/bash
set -e

echo "//registry.npmjs.org/:_authToken=${NPM_TOKEN}" > .npmrc
echo "registry=https://registry.npmjs.org/" >> .npmrc
# publish to npm
npm publish

# set registry to GitHub and publish
echo "//npm.pkg.github.com/:_authToken=${GH_TOKEN}" > .npmrc
echo "registry=https://npm.pkg.github.com/" >> .npmrc

# publish to github
npm publish

rm .npmrc
