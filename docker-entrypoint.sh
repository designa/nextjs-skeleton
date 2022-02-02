#!/bin/bash
# Interpreter identifier

# Exit on fail
set -e

echo "Running Yarn Install"
yarn install

if [ $# -eq 0 ]; then
	exec /bin/bash
else
	echo "exec command => $@"
	exec "$@"
fi
