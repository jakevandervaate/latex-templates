# LaTeX Templates

Templates I've designed for LaTeX documents

## Resume

![Resume screenshot](resume/resume.png)

The resume is made up of the three following files:

* **resume.tex**- Edit this file with information you want to appear on your resume.
  The file is filled with template information you can use as examples.
* **commands.tex**- This file has my custom commands to style the headings, title, and lists.
  This file shouldn't need to be edited unless you want to change the document style.
* **packages.tex**- This file contains all the packages I use in this template.

## pdf2png.sh

This shell script is what I used to generate the document screenshots for this README.
I included it for anyone who might be interested in doing the same.

These are the dependencies for this script: 

* pdftoppm
* imagemagick
* optipng

I've only tested this script on Linux; I can't speak to how well it will work on Mac.
This script will only work on Windows through Windows Subsystem for Linux (WSL).
