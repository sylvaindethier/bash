# Bash utils

# Table of Contents
* [Getting Started](#getting-started)
    * [Import -- how to use](#import)
* [Libraries](#libraries)
    * [`chalk`](#chalk)
    * [`colors`](#colors)
    * [`log`](#log)
    * [`root_path`](#root-path)
* [Frequently asked questions](#faq)
* [License](#license)

# Getting Started
## Import
Import all the libararies:
```bash
source /path/to/bash-utils/all.sh
```

Import single `LIBRARY`:
```bash
source /path/to/bash-utils/lib/${LIBRARY}
```

# Libraries
## `chalk`
> Output styled message.
> See [`chalk.sh`](lib/chalk.sh) for further details and predined `chalk.<style>` shortcuts.
```bash
# chalk [<style>] [<message>]
# @param <style := $NO_COLOR> The style to apply to the <message>
# @param <message := ''>      The message
chalk $YELLOW "Message in yellow color."

# chalk.<style> functions
chalk.RED "Message in red color."
```

## `colors`
> Define ANSI color escape codes
> See [`colors.sh`](lib/colors.sh) for further details and predefined colors.
```bash
# color <ansi_color_code>
# @param <ainsi_color_code> The ANSI color code
RED=$( color "0;31" )
```

## `log`
> Log a message with an appropriate colorized level
> See [`log.sh`](lib/log.sh) for further details and predefined `log.<level>` shortcuts.
```bash
# log [<level>] [<message>]
# @param <level := ''>    The log level
# @param <message := ''>  The log message
log --info "Info message."
log.info "Info message."
```

## <a id="root-path" name="root-path"></a>`root_path`
> Resolve the root path from a bash script.
> See [`root_path.sh`](lib/root_path.sh) for further details.
```bash
# root_path <source>
# @param <source> The bash source invokation
ROOT_PATH=$( root_path ${BASH_SOURCE[0]} )
```

# FAQ

# License
See [`LICENSE` file](/LICENSE)
