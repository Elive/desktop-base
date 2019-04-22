#!/bin/sh
for ii in `seq 1 16` ; do
    sed s/XX/$ii/g banners-formatos.svg > $ii.svg
    inkscape -z -e countdown-$ii.png $ii.svg
    rm $ii.svg
done
