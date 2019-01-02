#!/usr/bin/env bash

root_dir="$(dirname "${BASH_SOURCE[0]}")"

(cd ${root_dir}; git pull)
