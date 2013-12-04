#!/usr/bin/env python
import os,commands

time = 40
proc = ["apache"]
fich = "/tmp/mem_usage.dat"
os.system("rm "+fich)

for i in range(time):
        os.system("sleep 1")
        mem = 0
        for p in proc:
                mem_str = commands.getoutput("python mem_info.py | grep "+p+" | awk '{ print $7 }' ")
                mem = mem + float(mem_str)
        info = str(i)+" "+str(mem)
        os.system("echo "+info+" >>"+fich)

