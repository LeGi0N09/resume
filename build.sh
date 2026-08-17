#!/usr/bin/env bash

docker build -t latex .
docker run --rm -i -v "$PWD":/data latex sh -c \
    "pdflatex Priyansh_Modi_Resume.tex && pdftoppm -r 150 -png -singlefile Priyansh_Modi_Resume.pdf preview"
