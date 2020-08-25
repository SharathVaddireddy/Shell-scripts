#!/bin/bash
# shellcheck disable=SC2162
read -p "Folder path of pictures: " folder

dir=${folder}
#if [ -d "$dir"]
if [ -d "${dir}" ]; then
  for file in "${dir}/"*.tiff; do
    echo "${file}"
    convert "${file}" -quality 50% "${file}"
  done
else
  echo Directory doesnot exists
fi
