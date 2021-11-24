#!/bin/sh

#strip the file name off the input PDF
input_pdf="$1"
file_name="$(find """$1""" | sed 's|\.pdf||g')"
first_page="$2"
last_page="$3"

if [ "$2" = "" ]
then
	first_page="1"
else
	:
fi

if [ "$3" = "" ]
then
	last_page="$first_page"
else
	:
fi
#convert the PDF to a 600px wide PNG image
pdftoppm -f "$first_page" -l "$last_page" -png -scale-to-x 696 -scale-to-y -1 "$input_pdf" "$file_name"

#add a 2x2px border to the image.png file
for file in *.png; do
	convert "$file" -bordercolor black -border 2x2 "$file"

	#compress the image
	optipng "$file";
done
