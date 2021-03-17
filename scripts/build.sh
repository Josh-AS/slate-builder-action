#!/bin/bash
set -e

cd /usr/src/slate

bundle exec middleman build

mv ./build/* /usr/src/build/

echo $(ls /usr/src/build)