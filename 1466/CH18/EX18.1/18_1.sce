
clc
//initialisation of variables
f=0.0025
l=10//ft
T1=540//0 f
d=1/8
w1=0.208
//CALCULATIONS
k=f*l/d
v1=27.15*sqrt(540)
W=0.208*%pi*d*d*v1/4
//RESULTS
printf ('\n maximum discharge= %.3f lb/sec',W)
