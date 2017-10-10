//Optical Fiber communication by A selvarajan
//example 6.6
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
//given 
delta_L=1/100//error in effective interaction length
P=(%pi/2*delta_L)^2//cross talk power output in W
mprintf("cross talk power output=%fx10^-4W",P*10^4);//multiplication by 10^4 to convert unit from W to 10^-4 W
PdB=10*log10(P)//power in dB
mprintf("\ncross talk power output=%fdB",PdB)
