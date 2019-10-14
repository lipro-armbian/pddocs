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

inputpng="a20_cubietruck_expansion_ports.png"
interpdf="`mktemp`.pdf"
a4outpdf="a20_cubietruck_expansion_ports.pdf"
a4outarg="--paper a4paper --landscape"
metaargs=" \
  --pdftitle \"a20\_cubietruck\_expansion\_ports\" \
  --pdfsubject \"http://docs.cubieboard.org/\_media/products/a20\_cubietruck/ct-pin脚图.png\" \
  --pdfauthor \"CubieTech Limited\" \
  --pdfkeywords \"CubieTruck\" \
"

eval convert -verbose $inputpng $interpdf
eval pdfjam $metaargs $a4outarg --outfile $a4outpdf $interpdf
rm -f $interpdf
