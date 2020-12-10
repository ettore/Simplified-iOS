#!/bin/bash

# SUMMARY
#   Builds and run the unit tests for SimplyE or Open eBooks.
#
# SYNOPSIS
#   build-and-test.sh [<app-name>] [skipping-adobe]
#
# PARAMETERS
#   <app-name>     : Which app to build. If missing it defaults to SimplyE.
#                    Possible values: simplye | SE | openebooks | OE
#
#   skipping-adobe : Build the app but skip rebuilding the Adobe SDK as well as
#                    Readium 1 headers, since both rarely (if ever) change.
#
# USAGE
#   Run this script from the root of Simplified-iOS repo, e.g.:
#
#     ./scripts/build-and-test simplye

./scripts/build-3rd-parties-dependencies.sh $2

source "$(dirname $0)/xcode-test.sh"
