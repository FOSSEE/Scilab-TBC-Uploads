clc;
clear;
h=6.63*10^-34 //Plancks constant in J-s
v0=6*10^14 // threshold frequency of light in Hz
e=1.6*10^-19 //charge in C
V_s=3 //stopping potential in V

//calculation
v=((e*V_s)/h)+v0
mprintf("The frequency of light which ejects electrons from the surface is %1.3e Hz",v)
