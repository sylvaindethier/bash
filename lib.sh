#!/bin/bash

# source all files within 'lib' directory
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
LIBS=${DIR}/lib/*

for file in ${LIBS}; do
  if [ -x "$file" ]; then
    source "$file"
  fi
done
