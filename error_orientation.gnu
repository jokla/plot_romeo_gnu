reset
set title "Error in orientation"

set terminal postscript eps enhanced color font 'Helvetica,20' 
set output 'error_orientation.eps'
set termoption dash
set xlabel "Iteration"
#set xrange [0:29]
set ylabel "Error (rad)"
#set key at 60,-0.0008
set key right bottom box
set grid
set yrange[-0.4:0.2]
#set ytics 0, 0.003
#unset xtics
#set format y "%2.1t{/Symbol \327}10^{%L}"
#set output 'error.png'
#set size ratio -1
#reverb=100 ms && snr=10db
#
# define line styles using explicit rgbcolor names
#
set style line 1 lt 2 lc rgb "red" lw 3
set style line 2 lt 2 lc rgb "orange" lw 2
set style line 3 lt 2 lc rgb "yellow" lw 3
set style line 4 lt 2 lc rgb "green" lw 2


#plot "error_orientation.dat"  using ($1/11):($2*1000) with line lt 1 lw 12 lc 1  notitle,\
#	"error_orientation.dat"  using ($3/11):($4*1000) with line lt 1 lw 12 lc 4  notitle

 plot "error_orientation.dat"  using ($1):($2) with line lt 1 lw 5 lc 1   title 'theta x',\
	"error_orientation.dat"  using ($4):($5) with line lt 1 lw 5 lc 2  title 'theta y', \
	"error_orientation.dat"  using ($7):($8) with line lt 1 lw 5 lc 3  title 'theta z'
