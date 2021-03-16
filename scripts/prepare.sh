#!/bin/sh
set -e

cd $GITHUB_WORKSPACE

cp -R $SLATE_DOCS_PATH/* /usr/src/docs

ls /usr/src/docs