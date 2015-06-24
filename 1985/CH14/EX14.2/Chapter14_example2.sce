clc
clear
//Input data
t=10^-14//Relaxation time in s
T=300//Temperature in K
n=6*10^28//Electron concentration in m^-3
e=1.6*10^-19//Electron charge in Columbs
m=9.1*10^-31//Mass of electron in kg
kB=1.38*10^-23//Boltzmann constant in J/K

//Calculations
s=((n*e^2*t)/m)/10^7//Electrical conductivity in ohm^-1.m^-1 *10^7
K=((n*3.14^2*kB^2*T*t)/(3*m))//Thermal conductivity in W/m.K
L=(K/(s*10^7*T))/10^-8//Lorentz number in W.ohm/K^2 *10^-8

//Output
printf('Electrical conductivity is %3.4f*10^7 ohm^-1.m^-1 \n Thermal conductivity is %3.4f W/m.K \n Lorentz number is %3.4f*10^-8 W.ohm/K^2',s,K,L)
