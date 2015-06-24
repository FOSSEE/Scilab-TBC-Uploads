//fiber optic communications by joseph c. palais
//example 11.6
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
lambda=0.82e-6//wave length in m
h=6.63e-34//planks constant
tau=1e-6//bit period in Sec
c=3e8//light speed in m/s
ns=10//no. of photons required per bit
eta=1//Quantum efficiency
Pt=146*10^-9//power in thermal system from Ex11.5=146nW
//to find
P=(h*c*ns)/(eta*lambda*tau)// optic power in W
mprintf("Power=%fpW",P*10^12)
sensitivity=10*log10(Pt/P)//The shot noise limited system sensitivity
mprintf("\nThe shot noise limited system is more sensitive by=%fdB",sensitivity)
