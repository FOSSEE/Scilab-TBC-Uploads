clc;
clear;
L=0.5*10^-9 //width in m
m=9.1*10^-31 //mass in kg
V_0=15*1.6*10^-19 //height of the potential well in J
h=6.63*10^-34 //Plancks constant in J-s

//calculation
n_max=(4*L*sqrt(m*V_0))/h

mprintf("The maximum quantum number possible is %d",n_max)
