#!/bin/bash

. scripts/shell/1-make-custom-iso.sh "$1" "$2"
. scripts/shell/2-make-box-from-packer.sh
. scripts/shell/3-run-tests.sh
