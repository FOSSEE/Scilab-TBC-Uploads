//Optical Fiber communication by A selvarajan
//example 5.2
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
//given 
eta=0.6//quantum efficiency
Po=10*10^-6//optical power in W
q=1.6*10^-19//charge of an elctron in columb
lambda=0.85*10^-6//wavelength in m
h=6.6*10^-34//planck's constant
c=3*10^8//velocity of light in m/s
Rl=50//load Resistance in ohm
R=(q*eta*lambda)/(h*c)//responsivity in A/W
I=R*Po//current in A
V=Rl*I//Voltage in V
mprintf("Responsivity=%f",R)
mprintf("\nCurrent=%fuA",I*10^6)//multiplication by 1e6 to convert unit from A to uA
mprintf("\nVoltage=%fmV",V*10^3)//multiplication by 1e6 to convert unit from V to mV
