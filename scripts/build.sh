#!/bin/bash
set -e

cd /usr/src/slate

bundle exec middleman build

mv ./build/* /usr/src/build/