reset
set title "Error in translation"

set terminal postscript eps enhanced color font 'Helvetica,20' 
set output 'error_translation.eps'
set termoption dash
set xlabel "Iteration"
#set xrange [0:29]
set ylabel "Error (m)"
#set key at 60,-0.0008
set key right bottom box
set grid
set yrange[-0.15:0.05]

set style line 1 lt 2 lc rgb "red" lw 3
set style line 2 lt 2 lc rgb "orange" lw 2
set style line 3 lt 2 lc rgb "yellow" lw 3
set style line 4 lt 2 lc rgb "green" lw 2

 plot "error_translation.dat"  using ($1):($2) with line lt 1 lw 5 lc 1   title 'tx',\
	"error_translation.dat"  using ($4):($5) with line lt 1 lw 5 lc 2  title 'ty', \
	"error_translation.dat"  using ($7):($8) with line lt 1 lw 5 lc 3  title 'tz'
