name = "Search-Comp-DBSize10M-ResultSizeVar-32B-NoCache"
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
set xlabel offset 0,0.5,0
set lmargin 8
set title ""
#set format y '%.2h'
set logscale x 10
set key box left top  font "Helvetica,30" at graph 0.03,0.97
#set key width 1.5
#unset key
set logscale y 10
set format y "10^{%L}"
set format x "10^{%L}"
set yrange [5:100000000]
set xrange [10:5000000]
set xlabel 'n_w'
set ylabel 'Time(milliseconds)'
unset label
plot data_file u 1:3 w lp t col ps 4 lw 4 linecolor 2 pt 2, data_file u 1:5 w lp t col linecolor 4 ps 4 lw 4 pt 4, data_file u 1:7 w lp t col linecolor 7 ps 4 lw 4 pt 6,data_file u 1:10  w l noti lt 2 linecolor 2 dt 7,data_file u 1:11 w lp t col linecolor 7 ps 4 lw 4 pt 9,data_file u 1:12 w lp t col linecolor 7 ps 4 lw 4 pt 1