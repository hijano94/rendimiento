#!/bin/bash
if [ -n "$4" ]
then
	rm $3
	ab -n $1 -c $2 -k -g $3 $4
	gnuplot template.p 2 > /dev/null
	eog benchmark.png &
else
	echo "rendimiento.sh Conexiones Concurrencia Fichero URL"
fi
