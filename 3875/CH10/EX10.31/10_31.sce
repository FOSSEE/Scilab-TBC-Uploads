clc;
clear;
delta_x=5*10^-14 //diameter of nucleus in m
h=6.63*10^-34 //plancks constant
m=1.675*10^-27 //mass in kg

//calculation
p_min=h/(4*%pi*delta_x) //minimum momentum in kg-m/s
E_min=((p_min)^2/(2*m))

mprintf("The minimum kinetic energy of the nucleon is = %1.2e J or 0.33*10^-15 J",E_min)
