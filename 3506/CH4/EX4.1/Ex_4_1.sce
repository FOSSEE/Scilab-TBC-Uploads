//Optical Fiber communication by A selvarajan
//example 4.1
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
//given  
tau_r=12*10^-9//radiative recombination time in s
tau_nr=35*10^-9//non-radiative recombination time in s
n1=3.5//refractive index of semiconductor
n2=1//refractive index of air
d=0.4*10^-6//active later thickness in m
V=8//recombination velocity
eta_int=1/(1+(tau_r/tau_nr))//internal quantum efficiency
tau=1/((tau_r^-1)+(tau_nr^-1)+(2*V/d))//total recombination time in s
f=sqrt(3)/(2*%pi*tau)//bandwidth in Hz
F3=((n1-n2)^2/(n1+n2)^2)//fresnel reflection 
eta_ext=eta_int*(1-F3)//external quantum efficiency
mprintf("internal quantum efficiency=%f",eta_int)//The answers vary due to round off error
mprintf("\ntotal recombination time =%f ns",tau*1e9)//multiplication by 1e9 to convert unit from s to ns//The answers vary due to round off error
mprintf("\nbandwidth =%f MHz",f*1e-6)//multiplication by 1e-6 to convert unit from Hz to MHz///The answers vary due to round off error
mprintf("\nfresnel reflection=%f ",F3)//The answers vary due to round off error
mprintf("\nexternal quantum efficiency=%f",eta_ext)//The answers vary due to round off error
