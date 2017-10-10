//Optical Fiber communication by A selvarajan
//example 5.4
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
//given 
I=100*1e-9//current in A
P=5*1e-9//Incident power in W
h=6.6*10^-34//planck's constant
c=3*10^8//velocity of light in m/s
q=1.6*10^-19//charge of an elctron in columb
eta=0.7//quantum efficiency
lambda=1.5*10^-6//wavelength in m
R=I/P;//APD responsivity in A/W
M= (R*h*c)/(q*eta*lambda);//Multiplication factor
mprintf("Responsivity=%f",R)
mprintf("\nMultiplication factor=%f",M)
