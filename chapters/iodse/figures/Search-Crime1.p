name = "Search-Crime1"
eps_file = name.".eps"
data_file = name.".dat"
set terminal postscript eps size 6,4.8 enhanced color  font "Helvetica,45" linewidth 3
set output eps_file
unset grid
#set tics font "Helvetica,12"
#set key font "Helvetica,12"
#set xlabel font "Helvetica,12"
#set ylabel font "Helvetica,12"
#set size 1, 1
#set xtics 0,5,50
#unset logscale y
set ylabel font "Helvetica,45" offset 0,0,0
set xlabel font "Helvetica,45" offset 0,0.5,0
set xtics font ", 33"
set lmargin 8
set title ""
#set format y '%.2h'
#set logscale x 10
set key box left top  font "Helvetica,33" at graph 0.03,0.97
set key width 1.5
set logscale y 10
set format y "10^{%L}"
#set format x "10^{%L}"
set yrange [40:50000000000]
#set xrange [10:5000000]
set xlabel 'n_w'
#set xtics rotate by 45
set ylabel 'Time(milliseconds)'
unset label


plot data_file u 2:xtic(1) w lp t col ps 4 lw 4 linecolor 1 pt 1, data_file u 3:xtic(1) w lp t col ps 4 lw 4 linecolor 2 pt 2, data_file u 4:xtic(1) w lp t col linecolor 8 ps 4 lw 4 pt 3, data_file u 5:xtic(1) w lp t col linecolor 4 ps 4 lw 4 pt 4, data_file u 6:xtic(1) w lp t col linecolor 6 ps 4 lw 4 pt 5,data_file u 7:xtic(1) w lp t col linecolor 7 ps 4 lw 4 pt 6,data_file u 8:xtic(1) w lp t col linecolor rgb 'brown' ps 4 lw 4 pt 8
