#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
for f in $DIR/*.svg; do
  echo $f
  filename="${f%.*}"
  rsvg-convert -f pdf $f > $filename.pdf
done
