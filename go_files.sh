#!/bin/zsh

BREEZO_ENV=$1 node src/main/resources/generate-dynamic-config.js
BREEZO_ENV=$1 node src/main/resources/generate-lock-config.js
BREEZO_ENV=$1 node src/main/resources/generate-local-config.js

BREEZO_ENV=$1 sed -i '' s/postgres-11.2/$1".dunzodev.in"/g src/main/resources/*.json
