clc
// from figure 4.11
l = 7.5 // cm
Dave = (25+ 10)/2 // average diameter in cm
v = 27 // cutting speed in m/min
f = 0.8 // feed in mm/rev
N = (1000*v)/(%pi*Dave*10) // r.p.m.
tm = l*10/(f*N) // min.
printf("\n The machining time to face on lathe = %0.2f min." , tm)
