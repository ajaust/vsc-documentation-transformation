#!/bin/bash

echo "Creating rst files from html input"
cd pandoc/
./convert_all_html_to_rst.sh
cd ..
echo "Copying rst files"
rstsrc="pandoc/generated_rst"
rsttarget="docs/generated_rst"
cmdline="cp -r pandoc/generated_rst docs/generated_rst"
echo ${cmdline}
${cmdline}
echo "Creating documentation"
cd docs/
make html
