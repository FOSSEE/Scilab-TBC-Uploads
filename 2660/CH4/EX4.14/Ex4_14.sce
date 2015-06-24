clc
D = 12.7 // diameter in mm
d = 50 // depth in mm
v = 75 // cutting speed in m/min.
f = 0.175 // feed in mm/rev
l = d + 2*0.29*D // lemgth of drill travel in mm
N = (1000*v)/(%pi*D) // r.p.m.
tm = l/(f*N) // min
printf("\n Time taken to drill hole = %0.3f min." , tm)
