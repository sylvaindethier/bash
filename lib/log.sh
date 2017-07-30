#!/bin/bash

source ./chalk.sh

##
# log_level_color <LEVEL>
#
log_level_color () {
  local LEVEL=${1}
  local COLOR=${NO_COLOR} # no color by default

  # determine log COLOR from LEVEL
  case "${LEVEL}" in
  "DEBUG")
    COLOR=${LIGHT_CYAN}
    ;;
  "WARNING")
    COLOR=${YELLOW}
    ;;
  "ERROR") | "FAILURE")
    COLOR=${LIGHT_RED}
    ;;
  "INFO")
    COLOR=${LIGHT_BLUE}
    ;;
  "SUCCESS")
    COLOR=${LIGHT_GREEN}
  # default to "STRONG"
  "STRONG") | *)
    COLOR=${WHITE}
    ;;
  esac
  echo $COLOR
}

##
# log <LEVEL> <STR>
#
log() {
  local LEVEL=$1
  local STR=$2

  # computed values
  # define COLOR upon LEVEL value
  local COLOR=$( log_level_color ${LEVEL} )

  # PREFIX w/ chalked "[<LEVEL>]" by default
  local PREFIX="[$( chalk ${COLOR} ${LEVEL}  )] "
  if [ "${LEVEL}" == "STRONG" ]; then
    # PREFIX w/ the COLOR only for STRONG level
    PREFIX="${COLOR}"
  fi
  local SUFFIX="\n${NO_COLOR}" # reset color w/ break line
  printf "${PREFIX}${STR}${SUFFIX}"
}

# log_error () { log 'ERROR' ${LIGHT_RED} "$1"; }
# # print_error () { log_error "$1"; }
# log_error "testing\nerror ${LIGHT_BLUE}foo"
# echo "bar{}"

# print_success () {
#   printf "[${LIGHT_GREEN}SUCCESS${NC}] $1\n"
# }

# print_info () {
#   printf "[${LIGHT_BLUE}INFO${NC}] $1\n"
# }

# print_warn () {
#   printf "[${YELLOW}WARNING${NC}] $1\n"
# }
