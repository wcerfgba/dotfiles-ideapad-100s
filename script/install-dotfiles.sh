#!/bin/sh
rsync -av --progress \
      $(realpath $(dirname $(realpath $0))/..)/ \
      ~ \
      --exclude .git \
      --exclude .gitignore
