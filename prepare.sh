#!/usr/bin/env bash

echo " > Install needed programs"
sudo pacman -S --needed - < package.list
