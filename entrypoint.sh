#!/bin/sh -l

set -e

sh -c "npm install -g zem && zem $*"
