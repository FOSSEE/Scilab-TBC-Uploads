
clc
//initialisation of variables
z1= 10 ///m
h1= 10 //m
v1= 12 //ft/sec
v2= 4 //m/sec
k= 0.6
w= 62.4 //lb/in^2
g= 32.2 //ft/sec^2
//CALCULATIONS
p= (w/144)*(z1+h1+(v1^2/(2*g))-(v2^2/(2*g))-(k*(v1-v2)^2/(2*g)))
//RESULTS
printf ('pressure at bottom end = %.2f lb/in^2',p)
