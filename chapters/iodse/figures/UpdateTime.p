name = "UpdateTime"
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
set xlabel offset 0,0,0
set lmargin 8
set title ""
#set format y '%.2h'
#set logscale x 10
set key box left top  font "Helvetica,30" at graph 0.03,0.97
set key width 1.5
set logscale y 10
set format y "10^{%L}"
#set format x "10^{%L}"
set yrange [1:100000000000000]
#set xrange [1:500]
set xlabel '|DB| (* 10K)'
set ylabel 'Time(milliseconds)'
#set xtics rotate by 45
unset label

plot data_file u 2:xtic(1) w lp t col linecolor 2 ps 4 lw 4, data_file u 3:xtic(1) w lp t col linecolor 2 ps 4 lw 4, data_file u 4:xtic(1) w lp t col linecolor 4 ps 4 lw 4, data_file u 5:xtic(1) w lp t col linecolor 4 ps 4 lw 4, data_file u 6:xtic(1) w lp t col linecolor 7 ps 4 lw 4, data_file u 7:xtic(1) w lp t col linecolor 7 ps 4 lw 4, data_file u 8:xtic(1) w lp t col linecolor 9 ps 4 lw 4, data_file u 9:xtic(1) w lp t col linecolor 9 ps 4 lw 4

#data_file u 1:4 w lp t col linecolor 7 ps 2 lw 2 pt 4
