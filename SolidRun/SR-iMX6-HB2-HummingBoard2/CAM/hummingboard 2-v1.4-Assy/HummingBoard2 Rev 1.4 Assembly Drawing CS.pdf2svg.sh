#!/bin/sh
#
# Needs PDF to SVG converter package, often separated in extra
# install packages, see:
#   https://wiki.ubuntuusers.de/pdf2svg
#   http://www.cityinthesky.co.uk/opensource/pdf2svg

inputpdf="HummingBoard2 Rev 1.4 Assembly Drawing CS.pdf"
outputsvg="HummingBoard2 Rev 1.4 Assembly Drawing CS.svg"
renderpgs="1"

eval pdf2svg \'$inputpdf\' \'$outputsvg\' \'$renderpgs\'
