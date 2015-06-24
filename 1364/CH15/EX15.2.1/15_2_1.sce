clc
//initialisation of variables
B= 34 //ft
z= 6 //ft
g= 32.2 //ft/sec^2
d= 6 //in
do= 2 //in
l= 6 //ft
l1= 0.04
//CALCULATIONS
s= sqrt((g*do^2*(B-6-z))/(l*d^2*(d/12)))
s1= s*60/(2*%pi)
hf= l1*(l/(2*g*(do/12)))*(d^2*s*d/(12*do^2))^2
//RESULTS
printf (' maximum friction head= %.2f ft',hf)
