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
  "--debug" | "-d")
    LEVEL_NAME="DEBUG"
    LEVEL_COLOR=${LIGHT_CYAN}
    ;;
  "--warning" | "--warn" | "-w")
    LEVEL_NAME="WARN"
    LEVEL_COLOR=${YELLOW}
    ;;
  "--error" | "-e")
    LEVEL_NAME="ERROR"
    LEVEL_COLOR=${LIGHT_RED}
    ;;
  "--failure" | "--fail" | "-f")
    LEVEL_NAME="FAIL"
    LEVEL_COLOR=${LIGHT_RED}
    ;;
  "--info" | "-i")
    LEVEL_NAME="INFO"
    LEVEL_COLOR=${LIGHT_BLUE}
    ;;
  "--success" | "-s")
    LEVEL_NAME="SUCCESS"
    LEVEL_COLOR=${LIGHT_GREEN}
    ;;
  "--strong" | "--bold" | "-b")
    # no LEVEL_NAME
    LEVEL_COLOR=${WHITE}
    ;;
  esac

  # define PREFIX w/ chalked "[<LEVEL_NAME>]" by default
  local PREFIX="[$( chalk ${LEVEL_COLOR} ${LEVEL_NAME}  )] "
  if [ "${LEVEL_NAME}" == '' ]; then
    # define PREFIX w/ the COLOR only if no <LEVEL_NAME>
    PREFIX="${COLOR}"
  fi

  local SUFFIX="${NO_COLOR}\n" # reset color w/ break line
  printf "${PREFIX}${MESSAGE}${SUFFIX}"
}

log_error () { log --error "$1"; }
print_error () { log_error "$1"; }
log_error "testing\nerror ${LIGHT_BLUE}foo"
echo "bar{}"

# print_success () {
#   printf "[${LIGHT_GREEN}SUCCESS${NC}] $1\n"
# }

# print_info () {
#   printf "[${LIGHT_BLUE}INFO${NC}] $1\n"
# }

# print_warn () {
#   printf "[${YELLOW}WARNING${NC}] $1\n"
# }
