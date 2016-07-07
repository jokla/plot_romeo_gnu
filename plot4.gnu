reset

folder = "maze/1/"

plot = "error_orientation"

set title "Error in orientation"
set terminal postscript eps enhanced color font 'Helvetica,15' 

plotout = folder . plot . ".eps"
set output plotout
set termoption dash
set xlabel "Time (s)"
set xrange [0:20]
set ylabel "Error (rad)"
#set key at 60,-0.0008
set key right bottom box
set grid
#set yrange[-0.4:0.2]
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


plotdat = folder . plot . ".dat"

plot plotdat using ($1):($2) with line lt 1 lw 2 lc 1   title 'theta x',\
     plotdat using ($4):($5) with line lt 1 lw 2 lc 2  title 'theta y', \
     plotdat  using ($7):($8) with line lt 1 lw 2 lc 3  title 'theta z'

########################################################################################################
#reset
set title "Error in translation"

plot = "error_translation"


plotout = folder . plot . ".eps"
set output plotout
set termoption dash
set xlabel "Time (s)"
set xrange [0:20]
set ylabel "Error (m)"
#set key at 60,-0.0008
set key right bottom box
set grid
#set yrange[-0.15:0.05]

set style line 1 lt 2 lc rgb "red" lw 3
set style line 2 lt 2 lc rgb "orange" lw 2
set style line 3 lt 2 lc rgb "yellow" lw 3
set style line 4 lt 2 lc rgb "green" lw 2


plotdat = folder . plot . ".dat"

 plot plotdat  using ($1):($2) with line lt 1 lw 2 lc 1   title 'tx',\
	plotdat  using ($4):($5) with line lt 1 lw 2 lc 2  title 'ty', \
	plotdat  using ($7):($8) with line lt 1 lw 2 lc 3  title 'tz'

########################################################################################################
#reset
set title "Joints velocities Master Arm"


plot = "qdot_master"

plotout = folder . plot . ".eps"
set output plotout
set termoption dash
set xlabel "Time (s)"
set xrange [0:20]
set ylabel "Velocities (m/s)"
#set key at 60,-0.0008
set key right top box
set grid
#set yrange[-0.1:0.15]

set style line 1 lt 2 lc rgb "red" lw 3
set style line 2 lt 2 lc rgb "orange" lw 2
set style line 3 lt 2 lc rgb "yellow" lw 3
set style line 4 lt 2 lc rgb "green" lw 2



plotdat = folder . plot . ".dat"

 plot plotdat  using ($1):($2) with line lt 1 lw 2 lc 1   title 'ShoulderPitch',\
	plotdat  using ($4):($5) with line lt 1 lw 2 lc 2  title 'ShoulderYaw', \
	plotdat  using ($7):($8) with line lt 1 lw 2 lc 3  title 'Elbow', \
	plotdat  using ($10):($11) with line lt 1 lw 2 lc 4  title 'Elbow', \
	plotdat  using ($13):($14) with line lt 1 lw 2 lc 5  title 'Wrist', \
	plotdat  using ($16):($17) with line lt 1 lw 2 lc 6  title 'Wrist', \
	plotdat  using ($19):($20) with line lt 1 lw 2 lc 7  title 'Wrist', \

########################################################################################################
#reset
set title "Joints velocities"

plot = "qdot_slave"


plotout = folder . plot . ".eps"
set output plotout
set termoption dash
set xlabel "Time (s)"
set xrange [0:20]
set ylabel "Velocities (m/s)"
#set key at 60,-0.0008
set key right top box
set grid
#set yrange[-0.1:0.15]

set style line 1 lt 2 lc rgb "red" lw 3
set style line 2 lt 2 lc rgb "orange" lw 2
set style line 3 lt 2 lc rgb "yellow" lw 3
set style line 4 lt 2 lc rgb "green" lw 2

plotdat = folder . plot . ".dat"

 plot plotdat  using ($1):($2) with line lt 1 lw 2 lc 1   title 'ShoulderPitch',\
	plotdat  using ($4):($5) with line lt 1 lw 2 lc 2  title 'ShoulderYaw', \
	plotdat  using ($7):($8) with line lt 1 lw 2 lc 3  title 'Elbow', \
	plotdat  using ($10):($11) with line lt 1 lw 2 lc 4  title 'Elbow', \
	plotdat  using ($13):($14) with line lt 1 lw 2 lc 5  title 'Wrist', \
	plotdat  using ($16):($17) with line lt 1 lw 2 lc 6  title 'Wrist', \
	plotdat  using ($19):($20) with line lt 1 lw 2 lc 7  title 'Wrist', \

