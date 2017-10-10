clc;
clear;
P=10^-3 //power in watt
r=6*10^-3 //distance from the source in m
c=3*10^8 // velocity of light in m/s
myu_0=4*10^-7 //refractive index
n=1

//calculation

I=P/(%pi*(r^2)) //intensity in W/m^2
E=sqrt((2*c*myu_0*I)/n)
mprintf("The electric field at a point = %1.1e volt/m",E)
//The answer given in the textbook is wrong.
