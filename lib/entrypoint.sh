#!/bin/sh

set -e

apk add --no-cache --virtual .gyp python make g++
npm install
apk del .gyp
NODE_PATH=node_modules node /action/lib/run.js
