printf "\ec\e[44;36m\n"
cp $1 $1.txt
sed -i 's/\t//g' $1.txt
tr -d '\n' < $1.txt > /tmp/1
tr -d '\r' < /tmp/1  > $1.txt
./xml2cvs $1.txt
rm /tmp/1

