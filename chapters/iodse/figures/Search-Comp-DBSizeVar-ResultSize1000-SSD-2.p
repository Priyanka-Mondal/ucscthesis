name = "Search-Comp-DBSizeVar-ResultSize1000-SSD-2"
eps_file = name.".eps"
data_file = name.".dat"
set terminal postscript eps size 6,4.8 enhanced color  font "Helvetica,45" linewidth 3
set output eps_file
unset grid
#set tics font "Helvetica,12"
#set key font "Helvetica,12"
#set xlabel font "Helvetica,12"
#set format y '%.2h'
#set size 1, 1
#set logscale y 10
#set format y "10^{%L}"
set ylabel offset 2,0,0
set title ""
#unset key
set key box left top  font "Helvetica,30" at graph 0.03,0.97
#set key width 1.5
#set logscale x 2
#set logscale y 10
#set format x "2^{%L}"
set lmargin 8
set yrange [0:250]
#set ytics 2
set xrange [11:26]
set xlabel 'Database Size(2^x)'
set ylabel 'Time(millisecond)'
unset label
plot data_file u 1:2 w lp t col ps 4 lw 4 linecolor 1 pt 1, data_file u 1:4 w lp t col linecolor 8 ps 4 lw 4 pt 3, data_file u 1:6 w lp t col linecolor 6 ps 4 lw 4 pt 5

