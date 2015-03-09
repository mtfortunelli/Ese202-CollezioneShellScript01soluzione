#!/bin/bash

# Riceve un argomento da riga di comando, composto da un numero intero positivo
# Scrive "Ciao 1", "Ciao 2", ... uno per riga, da 1 al numero passato come argomento

if [ $# -gt 1 -o $# -eq 0 ]
then
	echo
	echo "Inserire argomento"
	exit 1
fi
if [ $@ -lt 0 ]
then
	echo "devi inserire un numero positivo"
	exit 2
fi
echo
for i in $(seq $1)
do
	echo "Ciao $i"
done

exit 0