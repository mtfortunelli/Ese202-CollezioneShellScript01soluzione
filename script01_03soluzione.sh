#!/bin/bash

# Riceve uno o piu' argomenti da riga di comando.
# Ogni argomento contiene il nome di un file.
# Lo verifica se almeno uno dei file specificati come argomento esiste nella directory corrente.
# In caso positivo, stampa il messaggio "Almeno un file trovato" e restituisce un codice di uscita 0
# Altrimenti stampa il messaggio "Nessun file trovato" e restituisce il codice di uscita 1
b=0
if [ $# -eq 0 ]
then
	echo
	echo "Inserire un argomento"
	exit 2
fi

for i in $@
do
	if [ -e $i ]
	then
		b=1
		break
	fi
done

echo

if [ $b -eq 1 ]
then
	echo "file trovato"
	exit 0
else
	echo "non ci sono file trovati"
	exit 1
fi