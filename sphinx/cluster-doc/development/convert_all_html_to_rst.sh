#!/bin/bash

pandoc_cmd="pandoc -s -f html -t rst"

for f in *.html; do
 filename=$(basename -- "${f}") 
 ext="${filename##*.}"
 filename="${filename%.*}"
# echo $filename $ext

 outfilename="${filename}.rst"
 echo "Coverting file ${f} to ${outfilename}"
 cmd_line="${pandoc_cmd} ${f} -o ${outfilename}"
 echo $cmd_line
 ${cmd_line}
# ${pandoc_cmd} -o ${outfilename}
done
