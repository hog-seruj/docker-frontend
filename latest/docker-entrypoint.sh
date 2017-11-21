#!/bin/sh

# Allow run from any user.
export HOME=/tmp
# Link global packages.
/usr/bin/npm link susy $NPM_PACKAGES

exec "$@"
