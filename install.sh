#!/usr/bin/env bash

root_dir="$(dirname "${BASH_SOURCE[0]}")"

# update stowsh
if ! [ -d ${root_dir}/.bin ]; then
    mkdir ${root_dir}/.bin
fi
curl -o ${root_dir}/.bin/stowsh https://raw.githubusercontent.com/williamsmj/stowsh/master/stowsh
chmod +x ${root_dir}/.bin/stowsh

# packages are first level directories that don't start with "."
packages="$(find ${root_dir}/* -maxdepth 1 ! -name ".*" -type d)"

for package in ${packages}; do
    ${root_dir}/.bin/stowsh -v -s "${package}" -t "${HOME}"
done
