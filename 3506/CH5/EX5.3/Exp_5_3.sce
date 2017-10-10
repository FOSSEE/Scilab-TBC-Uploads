//Optical Fiber communication by A selvarajan
//example 5.3
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
//given 
tau_tr=2*1e-9//transit time in sec
Rl=50//load resistance in ohm
Cd=3*1e-12//Junction capacitance in farad
tau=2*Rl*Cd//Circuit time constant in sec
f3dB=(0.35/tau_tr)//3dB bandwidth in Hz
mprintf("Circuit time constant =%f ns",tau*1e9)//multiplication by 1e9 to convert unit from s to ns
mprintf("\n3dB bandwidth=%fMHz",f3dB*1e-6)//multiplication by 1e-6 to convert unit from Hz to MHz
