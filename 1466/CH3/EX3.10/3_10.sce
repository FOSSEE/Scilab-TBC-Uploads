
clc
//initialisation of variables
r= 6 //in
r1= 3 //in
g= 32.2 //ft/sec^2
Q= 1450 //r.p.m
w= 62.4 //lb/ft^3
//CALCULATIONS
dp= (2*%pi*Q)^2*((r/12)^2-(r1/12)^2)*w/(60^2*2*g*144)
//RESULTS
printf (' pressure difference = %.1f Lb/in^2 ',dp)
