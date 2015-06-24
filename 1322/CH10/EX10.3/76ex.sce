
clear;
clc;
close; 
clf;
time=[0 1 2 3 4 5];
distance=[0 2 8 18 32 50];
plot(time,distance,"o-")
xtitle("Relation between Time and Distance","time t in sec","distance in meters");
xgrid;
//ex1:distance passed over in 3.6s
mprintf("EX1: \nfrom curve, it is 26m. the actual distance from formula is 25.92m")
//ex2:time to travel 42m
mprintf("EX2: \nline from 42m on distance axis that touches the curve at 4.6s.the mechanics formula gives 4.58s")


 
