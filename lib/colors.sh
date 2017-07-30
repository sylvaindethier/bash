#!/bin/bash

##
# Define ANSI color escape code
# color <ansi_color_code>
#
# @param <ainsi_color_code> The ANSI color code
# @see: https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
#
color () { printf "\033[${1}m"; }

# No Color     0
NO_COLOR=$( color "0" ); NC=${NO_COLOR};

# Black        0;30
# Dark Gray    1;30
BLACK=$( color "0;30" )
DARK_GRAY=$( color "1;30" )
LIGHT_BLACK=${DARK_GRAY}

# Red          0;31
# Light Red    1;31
RED=$( color "0;31" )
LIGHT_RED=$( color "1;31" )

# Green        0;32
# Light Green  1;32
GREEN=$( color "0;32" )
LIGHT_GREEN=$( color "1;32" )

# Brown/Orange 0;33
# Yellow       1;33
BROWN=$( color "0;33" ); ORANGE=${BROWN};
YELLOW=$( color "1;33" )
LIGHT_BROWN=${YELLOW}; LIGHT_ORANGE=${YELLOW};

# Blue         0;34
# Light Blue   1;34
BLUE=$( color "0;34" )
LIGHT_BLUE=$( color "1;34" )

# Purple       0;35
# Light Purple  1;35
PURPLE=$( color "0;35" )
LIGHT_PURPLE=$( color "1;35" )

# Cyan         0;36
# Light Cyan    1;36
CYAN=$( color "0;36" )
LIGHT_CYAN=$( color "1;36" )

# Light Gray   0;37
# White         1;37
LIGTH_GRAY=$( color "0;37" )
WHITE=$( color "1;37" )
STANDARD=${LIGTH_GRAY}
LIGHT_STANDARD=${WHITE}
