#!/bin/bash
set -e

echo "//registry.npmjs.org/:_authToken=${NPM_TOKEN}" > .npmrc
echo "registry=https://registry.npmjs.org/" >> .npmrc
# publish to npm
npm publish

rm .npmrc
