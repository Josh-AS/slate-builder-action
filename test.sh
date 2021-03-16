#!/bin/sh

echo .$INPUT_DOCSPATH/*.md
mkdir /usr/src/docs/
mv .$INPUT_DOCSPATH/*.md /usr/src/docs/*.md
cd /usr/src/docs/
ls