#!/bin/sh

export HOME=/fake-home

rm -rf /work/node_modules
cp -rf /node_modules /work

exec "$@"
