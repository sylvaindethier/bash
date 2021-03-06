#!/bin/bash

##
# Resolve the root path from a bash script
# root_path <source>
#
# @param <source> The bash source invokation
# @example: ROOT_PATH=$( root_path ${BASH_SOURCE[0]} )
# @see: https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within#246128
##
root_path () {
  local SOURCE=$1 # SOURCE is the 1st argument
  local DIR=''

  while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
    DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
    SOURCE="$(readlink "$SOURCE")"
    [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
  done
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  echo "$DIR"
}
