#/bin/bash

input_markdown_file=$1
input_bibliography=$2
input_csl=$3
input_outputfilepath=$4

base_url="https://raw.githubusercontent.com/citation-style-language/styles/master"
wget "${base_url}/${input_csl}.csl"

perl /mdbibexport.pl $input_markdown_file $input_bibliography
pandoc $input_markdown_file \
  -o $input_outputfilepath \
  --citeproc \
  --bibliography=mdbibexport.bib \
  --csl=$input_csl
