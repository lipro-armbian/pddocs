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

inputpng="hummingboard-edge-block-diagram-1024x528.png"
interpdf="`mktemp`.pdf"
a4outpdf="hummingboard-edge-block-diagram.pdf"
a4outarg="--scale 0.7 --paper a4paper --landscape"
metaargs=" \
  --pdftitle \"hummingboard-edge-block-diagram\" \
  --pdfsubject \"https://developer.solid-run.com/download/hummingboard-edge-block-diagram?wpdmdl=2086\" \
  --pdfauthor \"SolidRun Limited\" \
  --pdfkeywords \"SR-iMX6-HB2-HummingBoard2\" \
"

eval convert -verbose $inputpng $interpdf
eval pdfjam $metaargs $a4outarg --outfile $a4outpdf $interpdf
rm -f $interpdf
