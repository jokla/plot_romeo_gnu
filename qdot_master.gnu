reset
set title "Joints velocities"

set terminal postscript eps enhanced color font 'Helvetica,20' 
set output 'qdot_master.eps'
set termoption dash
set xlabel "Iteration"
#set xrange [0:29]
set ylabel "Velocities (m/s)"
#set key at 60,-0.0008
set key right top box
set grid
set yrange[-0.1:0.15]

set style line 1 lt 2 lc rgb "red" lw 3
set style line 2 lt 2 lc rgb "orange" lw 2
set style line 3 lt 2 lc rgb "yellow" lw 3
set style line 4 lt 2 lc rgb "green" lw 2

 plot "qdot_slave.dat"  using ($1):($2) with line lt 1 lw 5 lc 1   title 'ShoulderPitch',\
	"qdot_master.dat"  using ($4):($5) with line lt 1 lw 5 lc 2  title 'ShoulderYaw', \
	"qdot_master.dat"  using ($7):($8) with line lt 1 lw 5 lc 3  title 'Elbow', \
	"qdot_master.dat"  using ($10):($11) with line lt 1 lw 5 lc 4  title 'Elbow', \
	"qdot_master.dat"  using ($13):($14) with line lt 1 lw 5 lc 5  title 'Wrist', \
	"qdot_master.dat"  using ($16):($17) with line lt 1 lw 5 lc 6  title 'Wrist', \
	"qdot_master.dat"  using ($19):($20) with line lt 1 lw 5 lc 7  title 'Wrist', \
