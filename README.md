# Public Domain Documents

- [Notes](#notes)
- [Cubietech](#cubietech)

---

## Notes

Open and convert `.dwg` and `.dxf` with FreeCAD and ODA File Converter, see:
https://askubuntu.com/a/1136178

---

## Cubietech

* http://www.cubietech.com/
* http://cubieboard.org/
  * http://cubieboard.org/model
  * http://cubieboard.org/download
    * http://dl.cubieboard.org/
  * http://docs.cubieboard.org/
* https://linux-sunxi.org/
  * http://dl.linux-sunxi.org/
* http://cubian.org/
* https://www.armbian.com/download/?tx_maker=cubietech

---

<!--
shell script I used to generare the TOC on top of this file manually:
cat README.md \
    | sed -e '/```/ r pf' -e '/```/,/```/d' \
    | grep "^#" \
    | tail -n +2 \
    | tr -d '`' \
    | sed 's/# \([a-zA-Z0-9`. -]\+\)/- [\1](#\L\1)/' \
    | awk -F'(' '{for(i=2;i<=NF;i++)if(i==2)gsub(" ","-",$i);}1' OFS='(' \
    | sed 's/^####/      /' \
    | sed 's/^###/    /' \
    | sed 's/^##/  /' \
    | sed 's/^#//'
-->
