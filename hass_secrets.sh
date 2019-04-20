#!/bin/bash

if [[ $# -eq 0 ]] ; then
    echo 'Usage: hass_secret secret_key'
    exit 0
fi

cat ./secrets.yaml | grep ^$1: | grep -oP '(?<=:).*' | sed 's/ //g' | awk '{print substr($0, 2, length($0) - 2)}'


