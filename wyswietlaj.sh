#!/bin/bash

#pobranie katalogu
echo "podaj katalog"
read DIR

if [ -d $DIR ]; then
	echo "Ok"
else
	echo "zla sciezka"
	exit 1
fi

cd $DIR
touch lista.txt
LISTA=$(ls -l | grep ^- | awk '{print $9}' > lista.txt)
LICZNIK=$(ls -l | grep ^- | wc -l)




I=0
#echo "To jest wielkosc listy $x"
while [ $I -le $LICZNIK ] ; do
#	echo "czy ta petla dziala?"
	I=$[I + 1]
# W NP macie kolejno przyrastajace nazwy.	
	NP=($(sed -n ${I}p lista.txt))
	echo "$NP"
done
echo "chyba sie udalo"
