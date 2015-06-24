clc
v = 50 // cutting speed in m/min
D = 150 // diameter of face cutter in mm
N = (1000*v)/(%pi*D) // r.p.m.
f = 0.25 // feed mm/tooth
n = 10 //number of tooth
tf = N*f*n // table feed in mm/min
l = 200 // length of work piece in mm
d = 25 // depth of slot in mm
tot = sqrt(D*d - d^2) // total overtravel in mm
tct = l + tot // total cutter travel in mm
time = tct/tf // min.
printf("\n Table feed = %d mm/min. \n Total cutter travel = %0.1f mm\n Time required to machine the slot = %0.3f min." , tf , tct ,time )
