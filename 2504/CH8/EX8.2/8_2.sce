clc
//initialisation of variables
clear
w= 78.9 //lbf.ft^3
d= 0.01 //in
u= 8.67*10^-9 //lbf/ hr ft^2
h= 18 //ft
l= 10 //ft
//CALCULATIONS
Q= %pi*w*(d/12)^4*(h+l)/(l*128*u)
//RESULTS
printf ('Flow rate = %.2e ft^3/hr',Q)
