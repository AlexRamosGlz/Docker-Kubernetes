#!/bin/bash

echo "Running prechecks..."

echo "Creating a index js"

echo "console.log('Hello World');" > ./index.js

exec "$@"