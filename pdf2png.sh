#!/bin/sh

#strip the file name off the input PDF
file="$(ls ""$1"" | sed 's|\.pdf||g')"

#convert the PDF to a 600px wide PNG image
pdftoppm -singlefile -png -scale-to-x 696 -scale-to-y -1 "$1" "$file"

#add a 2x2px border to the image.png file
convert "$file".png -bordercolor black -border 2x2 "$file".png

#compress the image
optipng "$file".png
