#!/bin/bash

cd pandoc/
./convert_all_html_to_rst.sh
cd ..
cd sphinx/
make html
