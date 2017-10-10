clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 1.7.1\n')
//given data
Po=25//amplitude of force in N
Xo=0.05//ampliyude of displacement in m
W=20*%pi
//calculations
//case 1
t0=0
t1=1
v1=integrate('sin(W*t)*cos(W*t-%pi/6)','t',t0,t1)
WD1=Po*Xo*W*v1
//case 2
t0=0
t1=1/40
v2=integrate('sin(W*t)*cos(W*t-%pi/6)','t',t0,t1)
WD2=Po*Xo*W*v2
//output
mprintf(' (i)work done during the first second is %f N-m\n (ii)work done during the first 1/40th of second is %f N-m',WD1,WD2)
