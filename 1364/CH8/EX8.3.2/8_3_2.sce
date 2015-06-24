clc
//initialisation of variables
T= 2.95 //lbf ft
y= 0.025 //in
d= 3 //in
d1= 3.05 //in
h= 8 //in
w= 450 //r.p.m
g= 32.2 //ft/sec^2
//CALCULATIONS
v= T*y*12*4*60*144*g/(%pi*d*h*d^2*w*2*%pi)
//RESULTS
printf (' coefficient of viscocity of oil= %.3f lb/ft sec ',v)
