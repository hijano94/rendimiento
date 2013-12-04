# output as png image
set terminal png
 
# save file to "benchmark.png"
set output "benchmark.png"
 
# graph a title
set title "Rendimiento"
 
 
# y-axis grid
set grid y
 
# x-axis label
set xlabel "request"
 
# y-axis label
set ylabel "response time (ms)"
 
# plot data from "server1.txt" and "server2.txt" using column 9 with smooth sbezier lines
plot "server1.txt" using 9 smooth sbezier with lines title "server1:"
#     "server2.txt" using 9 smooth sbezier with lines title "server2:"
