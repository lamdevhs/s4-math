#!/bin/bash

if [ $# -lt 1 ] ; then
  echo "wrong amount of parameter."
  exit 1
elif ! [ -e "$1" ]; then
  echo "file doesn exit."
  exit 1
fi

texp-exe "$1" "$1.gen"
asciidoctor-latex -b html -o "$1.html" "$1.gen"
echo "done."



# ~~~~~~~~~~~~~~
# ~~~~~~~~~~~~~~
