#!/usr/bin/env bash

# Locate the directory of this script
pushd "`dirname "$0"`" > /dev/null
scriptpath="`pwd`"
popd > /dev/null

# Optionally recompile libetpan
# $scriptpath/dependencies/build-dependencies.sh

# Ensure libetpan.pc is accessible to pkg-config
export PKG_CONFIG_PATH=$scriptpath

# Build
swift build
