#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source "$DIR/colors.sh"

##
# Output styled <message>
# chalk [<style>] [<message>]
# 
# @param <style := $NO_COLOR> The style to apply to the <message>
# @param <message := ''>      The message
#
chalk () {
  local STYLE=${1:-$NO_COLOR}
  local STR=${2:-''}
  printf "${STYLE}${STR}${NO_COLOR}"
}

chalk.BLACK () { chalk $BLACK "$1"; }
chalk.DARK_GRAY () { chalk $DARK_GRAY "$1"; }
chalk.LIGHT_BLACK () { chalk $LIGHT_BLACK "$1"; }

chalk.RED () { chalk $RED "$1"; }
chalk.LIGHT_RED () { chalk $LIGHT_RED "$1"; }

chalk.GREEN () { chalk $GREEN "$1"; }
chalk.LIGHT_GREEN () { chalk $LIGHT_GREEN "$1"; }

chalk.BROWN () { chalk $BROWN "$1"; }
chalk.ORANGE () { chalk $ORANGE "$1"; }
chalk.YELLOW () { chalk $YELLOW "$1"; }
chalk.LIGHT_BROWN () { chalk $LIGHT_BROWN. "$1"; }
chalk.LIGHT_ORANGE () { chalk $LIGHT_ORANGE "$1"; }

chalk.BLUE () { chalk $BLUE "$1"; }
chalk.LIGHT_BLUE () { chalk $LIGHT_BLUE "$1"; }

chalk.PURPLE () { chalk $PURPLE "$1"; }
chalk.LIGHT_PURPLE () { chalk $LIGHT_PURPLE "$1"; }

chalk.CYAN () { chalk $CYAN "$1"; }
chalk.LIGHT_CYAN () { chalk $LIGHT_CYAN "$1"; }

chalk.LIGTH_GRAY () { chalk $LIGTH_GRAY "$1"; }
chalk.WHITE () { chalk $WHITE "$1"; }
chalk.STANDARD () { chalk $STANDARD "$1"; }
chalk.LIGHT_STANDARD () { chalk $LIGHT_STANDARD "$1"; }
