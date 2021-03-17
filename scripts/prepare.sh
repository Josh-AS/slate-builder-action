#!/bin/bash
set -e

/bin/cp -rf /usr/src/docs/* /usr/src/slate/source

exec "$@"