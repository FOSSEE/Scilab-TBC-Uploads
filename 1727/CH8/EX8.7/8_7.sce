clc
//Initialization of variables
n=0.015
Q=1.3 //m^3/s
V=0.6 //m/s
gam=9.81*1000
//calculations
alpha=60 //degrees
A=0.5 *(1/2)^2 *(180-alpha)/180 *%pi -(1/4)^2 *tand(alpha)
A=0.206
P=0.5*(180-alpha)/180 *%pi
R=A/P
d2=V*n/(R^(2/3))
d8= Q*n*4*4^(2/3) /%pi
d=sqrt(d8/d2)
sf= (d2/d^(2/3))^2
//results
printf("Diameter = %.2f m",d)
printf("\n slope = %.5f ",sf)
//The answer given in textbook is wrong. please check
