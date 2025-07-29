METHOD="pbe1pbe"
BASIS="ccpvtz"

HEADER= << EOF
%nprocshared=32
%mem=100GB
# p opt=tight Int=UltraFine ${METHOD}/{BASIS}

Autojob.

0 1
EOF

for f
do 
    filename="${f%.*}_${METHOD}-${BAS    IS}.gjf"
    echo $HEADER > $filename
    cat $f >> $filename
    echo >> $filename
done

