clc
v = 6 // cutting speed in m/min
n = 5 // number of cuts
D = 44 // diameter in mm
N = (1000*v)/(%pi*D) // r.p.m
f = 0.5 // feed in cm
l = 8.9 // length of cut in cm
Tm = (l*n)/(f*N) // time in min
printf("\n Time to cut the threads = %0.2f min" , Tm)
// Answers vary due to round off error
