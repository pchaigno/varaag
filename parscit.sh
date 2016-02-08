#!/bin/bash

for pdf_text in /pdfs/*.txt; do
	echo "$pdf_text"
    cp "$pdf_text" /pdfs/tmp.txt
    /ParsCit/bin/citeExtract.pl -m extract_all /pdfs/tmp.txt > /pdfs/tmp.txt.out
    cp /pdfs/tmp.txt.out "$pdf_text.out"
done
