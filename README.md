# Bash utils

# Table of Contents
* [Getting Started](#getting-started)
    * [Import -- how to use](#import)
* [Libraries](#libraries)
    * [`root_path`](#root-path)
* [Frequently asked questions](#faq)
* [License](#license)

# Getting Started
## Import
Import all the libararies:
```bash
source /path/to/bash-utils/lib.sh
```

Import single `LIBRARY`:
```bash
source /path/to/bash-utils/lib/${LIBRARY}
```
# Libraries
## Root Path
> Resolve the root path from a bash script
```bash
ROOT_PATH=$( root_path ${BASH_SOURCE[0]} )
```
See [`root_path.sh`](lib/root_path.sh) for further details.

# FAQ

# License
See [`LICENSE` file](/LICENSE)
