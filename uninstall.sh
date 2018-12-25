#!/usr/bin/env bash

root_dir="$(dirname "${BASH_SOURCE[0]}")"

# update stowsh
echo -n " > Update stowsh... "
if ! [ -d ${root_dir}/.bin ]; then
    mkdir ${root_dir}/.bin
fi
curl -o ${root_dir}/.bin/stowsh -sS -w "(downloaded in %{time_total}s)\n" https://raw.githubusercontent.com/williamsmj/stowsh/master/stowsh 
chmod +x ${root_dir}/.bin/stowsh

# packages are first level directories that don't start with "."
echo " > Uninstall packages:"
packages="$(find ${root_dir}/* -maxdepth 1 ! -name ".*" -type d)"

for package in ${packages}; do
    echo -n "   - "
    ${root_dir}/.bin/stowsh -D -v -s "${package}" -t "${HOME}"
done
