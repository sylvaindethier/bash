#!/bin/bash

# source all files within 'lib' directory
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

LIB=${DIR}/lib/*
for file in ${LIB} ; do
  if [ -x "$file" ]; then
    source "$file"
  fi
done
