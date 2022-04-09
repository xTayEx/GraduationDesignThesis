#!/bin/bash

cd src/thesis/
xelatex main.tex
bibtex main
xelatex main.tex
xelatex main.tex

echo 'Total word count:'
pdftotext main.pdf - | wc -w
