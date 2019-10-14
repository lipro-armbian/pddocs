#!/bin/sh
#
# Needs ImageMagick with special policy, see:
#  https://askubuntu.com/questions/1081895
#  https://alexvanderbist.com/posts/2018/fixing-imagick-error-unauthorized
#
# Needs PDFjam package from TeXLiVe, often separated in extra
# install packages, see:
#   https://wiki.ubuntuusers.de/PDFjam
#   https://ctan.org/tex-archive/macros/latex/contrib/pdfpages

inputpng="Rev-1.5-Block-Digaram-1024x737.png"
interpdf="`mktemp`.pdf"
a4outpdf="Rev-1.5-Block-Digaram.pdf"
a4outarg="--scale 0.7 --paper a4paper --landscape"
metaargs=" \
  --pdftitle \"Rev-1.5-Block-Digaram\" \
  --pdfsubject \"https://developer.solid-run.com/download/i-mx6-som-block-diagram?wpdmdl=859\" \
  --pdfauthor \"SolidRun Limited\" \
  --pdfkeywords \"SR-uSOM-MX6\" \
"

eval convert -verbose $inputpng $interpdf
eval pdfjam $metaargs $a4outarg --outfile $a4outpdf $interpdf
rm -f $interpdf
