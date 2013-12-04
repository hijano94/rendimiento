# output as png image
set terminal png
 
# save file to "benchmark.png"
set output "mem_usage.png"
 
# graph a title
set title "Memoria MB"
 
# x-axis label
set xlabel "Tiempo"
 
# y-axis label
set ylabel "MB"
 
plot "/tmp/mem_usage.dat" with steps title "Memoria MB"
