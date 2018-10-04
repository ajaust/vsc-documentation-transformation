#!/bin/bash

pandoc_cmd="pandoc -s -f html -t rst"
srcdir="clean_html"
targetdir="generated_rst"

# Pandoc version less than 2 does not create proper reStructuredText files from html
check_pandoc_version() {
  echo "Testing pandoc version"

  pandoc_version=$(pandoc --version | head -n1 | cut -d' ' -f2) 
  pandoc_major_version=$(echo "${pandoc_version}" | cut -c1 )

  if [[ ${pandoc_major_version} -lt 2 ]]; then
    echo "pandoc version is ${pandoc_version}"
    echo "Please upgrade to a newer version where the major version is (at least) 2"
    echo "Aborting"
    exit 1
  fi
}

check_pandoc_version

mkdir -p ${targetdir}

for f in ${srcdir}/*.html; do
 filename=$(basename -- "${f}") 
 ext="${filename##*.}"
 filename="${filename%.*}"
# echo $filename $ext
# echo $f

  outfilename="${targetdir}/${filename}.rst"
#  echo "Coverting file ${f} to ${outfilename}"
  cmd_line="${pandoc_cmd} ${f} -o ${outfilename}"
  echo $cmd_line
  ${cmd_line}
done
