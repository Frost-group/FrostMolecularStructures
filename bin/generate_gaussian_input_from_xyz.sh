METHOD="pbe1pbe"
BASIS="cc-pvtz"

for f
do 
    filename="${f%.*}_${METHOD}-${BASIS}.gjf"

cat > $filename << EOF
%nprocshared=32
%mem=100GB
# p opt=tight Int=UltraFine ${METHOD}/${BASIS}

Autojob.

0 1
EOF

    cat $f >> $filename
    echo >> $filename
done

