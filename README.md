# Public Domain Documents

- [Notes](#notes)
- [Cubietech](#cubietech)
  - [USB UART Cable](#usb-uart-cable)

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

### USB UART Cable

#### Construction

| Release    | Schematic                                                                             | Layout (PCB)    | 2D Drawing | 3D Model   | Status     |
| :--------: | :-----------------------------------------------------------------------------------: | :-------------: | :--------: | :--------: | :--------: |
| V1         |                                                                                       | SJ-019 V3.0     |            |            |            |
| V2         |                                                                                       | SJ-019 V6.0     |            |            |            |
| V3         |                                                                                       | SJ-039 V1.0     |            |            |            |

#### Components

##### Electronic Parts

| Component                                          | Manufactor                                    | Name                                     | V1/2/3            | Package         | Refs            |
| :------------------------------------------------- | :-------------------------------------------- | :--------------------------------------- | :---------------: | :-------------- | :-------------: |
| USB to Serial Bridge Controller, 3.3/5V, USB 1.1   | [*Prolific*](Prolific/00-comefrom-urls)       | [**PL2303HX**](Prolific/PL2303)          | `U1`              | SSOP28-0.65mm   | [IMG][iCUCPLC]  |

[iCUCPLC]: Cubietech/USBUARTCable/IMG/cubieboard-uart-4.jpg

#### Assembly

| ![Cable](Cubietech/USBUARTCable/IMG/cubieboard-uart-6.jpg) | ![Board](Cubietech/USBUARTCable/IMG/cubieboard-uart-3.jpg) |
| :--------------------------------------------------------: | :--------------------------------------------------------: |
| *UART 3.3V TTL wires*                                      | *CubieBoard 1&2 connection*                                |

* http://www.cubietech.com/product-detail/usb-uart-cable
* http://linux-sunxi.org/Cubieboard/TTL

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
