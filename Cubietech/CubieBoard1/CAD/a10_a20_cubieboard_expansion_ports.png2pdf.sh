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

inputpng="a10_a20_cubieboard_expansion_ports.png"
interpdf="`mktemp`.pdf"
a4outpdf="a10_a20_cubieboard_expansion_ports.pdf"
a4outarg="--paper a4paper --no-landscape"
metaargs=" \
  --pdftitle \"a10\_a20\_cubieboard\_expansion\_ports\" \
  --pdfsubject \"http://docs.cubieboard.org/\_media/products/a10\_cubieboard/a10\_a20\_cubieboard\_expansion\_ports.png\" \
  --pdfauthor \"CubieTech Limited\" \
  --pdfkeywords \"CubieBoard\" \
"

eval convert -verbose $inputpng $interpdf
eval pdfjam $metaargs $a4outarg --outfile $a4outpdf $interpdf
rm -f $interpdf
