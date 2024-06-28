name = "Insert-SDA3"
eps_file = name.".eps"
data_file = name.".dat"
set terminal postscript eps size 6,4.8 enhanced color  font "Helvetica,33" linewidth 3
set output eps_file
unset grid
#set tics font "Helvetica,12"
#set key font "Helvetica,12"
set xlabel font "Helvetica,33"
set ylabel font "Helvetica,45" offset 2,0,0
#set format y '%.2h'
#set size ratio 0.8
#set xtics 0,10,50
#set logscale y 10
#set format y "10^{%L}"
#set ylabel offset 1,0,0
set title ""
set key box left top
set key width 1.5
#set logscale y 10
set lmargin 8
set yrange [0:17000]
#set format x "10^{%L}"
set xrange [0:1000]
set xlabel 'ith Update'
set ylabel 'Time(millisecond)'
unset label
plot data_file u 1:4 w lp t col linecolor 6 pointtype 5 ps 2 lw 2,data_file u 1:2 w lp t col linecolor 1 pt 1 ps 2 lw 2
