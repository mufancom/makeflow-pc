#!/usr/bin/env sh

VERSION=$1

if [ -z "$VERSION" ]; then
  echo "'version' not set! try running 'npm run release -- <your version>'"
  exit 1
fi

npm version "$VERSION" --allow-same-version

git add package.json
git commit -m "release $VERSION"

TAG="v$VERSION"

git tag "$TAG"
git push
git push origin "$TAG"