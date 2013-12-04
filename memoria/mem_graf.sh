#!/bin/bash

DATA=/tmp/mem_usage.dat

scp debian@172.22.196.54:$DATA $DATA

gnuplot template_mem.p
eog mem_usage.png &

