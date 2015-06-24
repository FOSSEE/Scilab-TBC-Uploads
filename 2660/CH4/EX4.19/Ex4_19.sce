clc
// from figure 4.17
d = 19 // depth of cut in mm
D1 = 5 // diameter of round bar in cm
v = 50 // cutting speed in m/min
n = 8 // number of teeth
f = 0.2 // feed in mm/tooth
l = 2*sqrt(d*D1*10 - d^2) // length of chord in mm
D2 = 10 // daimeter of cutter in cm
overrun = sqrt(D2*10*d+D1*10*d-d^2) - sqrt(D1*10*d-d^2)// mm
tt = l + overrun // table travel in mm
N = (1000*v)/(%pi*D2*10) // r.p.m
tm = tt/(f*n*N) // time in min.
printf("\n The milling time = %0.2f min." , tm )
