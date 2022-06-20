#!/usr/bin/env bash

for entry in ./assets/*.png; do
  echo "${entry##*/}"
  echo "${entry%.png}"
  echo $(basename "${entry}" ".${entry##*.}")
  foo=basename "${entry}" ".${entry##*.}"
  echo $(foo)
done