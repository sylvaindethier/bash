#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source "$DIR/chalk.sh"

##
# Log a <message> with an appropriate colorized <level> prefix
# log [<level>] [<message>]
# 
# @param <level := ''>    The log level
# @param <message := ''>  The log message
#
log() {
  local LEVEL=${1:-''}
  local MESSAGE=${2:-''}

  local LEVEL_NAME='' # no level name by default
  local LEVEL_COLOR=${NO_COLOR} # no level color by default

  # determine level NAME & COLOR from LEVEL
  case "${LEVEL}" in
  "--debug")
    LEVEL_NAME="DEBUG"
    LEVEL_COLOR=${LIGHT_CYAN}
    ;;
  "--warn" | "--warning")
    LEVEL_NAME="WARN"
    LEVEL_COLOR=${YELLOW}
    ;;
  "--error")
    LEVEL_NAME="ERROR"
    LEVEL_COLOR=${LIGHT_RED}
    ;;
  "--fail" | "--failure")
    LEVEL_NAME="FAIL"
    LEVEL_COLOR=${LIGHT_RED}
    ;;
  "--info")
    LEVEL_NAME="INFO"
    LEVEL_COLOR=${LIGHT_BLUE}
    ;;
  "--success")
    LEVEL_NAME="SUCCESS"
    LEVEL_COLOR=${LIGHT_GREEN}
    ;;
  "--strong" | "--bold")
    # no LEVEL_NAME
    LEVEL_COLOR=${WHITE}
    ;;
  esac

  # define PREFIX w/ chalked "[<LEVEL_NAME>]" by default
  local PREFIX="[$( chalk ${LEVEL_COLOR} ${LEVEL_NAME}  )] "
  if [ -z $LEVEL_NAME ]; then
    # define PREFIX w/ the COLOR only if no <LEVEL_NAME>
    PREFIX="${LEVEL_COLOR}"
  fi

  local SUFFIX="${NO_COLOR}\n" # reset color w/ break line
  printf "${PREFIX}${MESSAGE}${SUFFIX}"
}

log.debug   () { log --debug "$1"; }

log.warn    () { log --warn "$1"; }
log.warning () { log --warning "$1"; }

log.error   () { log --error "$1"; }

log.fail    () { log --fail "$1"; }
log.failure () { log --failure "$1"; }

log.info    () { log --info "$1"; }

log.success () { log --success "$1"; }

log.strong  () { log --strong "$1"; }
log.bold    () { log --bold "$1"; }
