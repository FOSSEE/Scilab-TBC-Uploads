clc
w = 50 // width of grinding wheep in mm
f = w/2 // feed in mm
t = 0.25 // toatal stock in mm
d = 0.025 // depth of cut in mm
n = t/d // number of cuts 
v = 15 // cutting speed in m/min
D = 38 // diameter in mm
N = (1000*v)/(%pi*D) // r.p.m.
l = 200 // length of part in mm
Tm = (l*10)/(f*N) // min.
printf("Time required to grind the shaft = %0.2f min." , Tm)
