#!/bin/sh
set -e

cp $SLATE_DOCS_PATH/index.html.md /usr/src/app/source

bundle exec middleman build
mv /usr/src/app/build $SLATE_DOCS_PATH