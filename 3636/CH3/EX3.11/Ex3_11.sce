clc;
clear;
E=1.43 //in eV
h=4.14*10^-15 //plancks constant in e*V*s
c=3*10^8 //in m/s

//Calculation
//a)
v=E/h

//b)
lamda=c/v

mprintf("a)minimum frequency= %.3e Hz\n",v)
mprintf("b)wavelength= %.1e m",lamda) //The answers vary due to round off error


