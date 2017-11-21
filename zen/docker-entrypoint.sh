#!/bin/sh

# Prevent conflicts with existing packages.
rm -rf node_modules
# Allow run from any user.
export HOME=/tmp
# Link global packages.
/usr/bin/npm link susy $NPM_PACKAGES

exec "$@"
