//fiber optic communications by joseph c. palais
//example 1.4
//OS=Windows XP sp3
//Scilab version 5.4.1
clc 
clear all
//given
h=6.626e-34// plancks constant
c=3e8// velocity of light in m/s
lambda=0.8e-6//wavelength in m
P=1e-6//input power in W
t=1// time in sec
//to find
Wp=h*c/lambda// energy of one photon
W=P*t//energy in J
n=W/Wp//no of photons
mprintf("total no. of photons=%fx10^12 photons",n/10^12)

