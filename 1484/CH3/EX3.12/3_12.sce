clc 
//initialisation of variables
R2= 2 //ft
R1= 1 //ft
w= 200 //r.p.m
g= 32.2 //ft/sec^2
//CALCULATIONS
v2= R2*%pi*w*R2/60
v1= R2*%pi*w*R1/60
H= (v2^2-v1^2)/(2*g)
//RESULTS
printf ('centrifugal head= %.1f ft of watrer ',H)
