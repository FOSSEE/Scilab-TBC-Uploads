//Example 6.4
//Bode Plot with Complex Poles.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//System transfer function and its bode plot
K=10;
s=poly(0,'s');
Gs=syslin('c',(K)/(s*(s^2+0.4*s+4)));
//The bode plot of the system

fmin=0.1/2/%pi; //mininmum frq. in Hz for response (0.1 rad/sec)
fmax=10/2/%pi; //maximum frq. in Hz for response (100 read/sec)
//------------------------------------------------------------------
//Bode plot for frequency in Hz (scilab ver. 5.4.1)
//bode(g,fmin,fmax); 
//OR 
//Bode plot for frequency in rad/sec (scilab ver. 5.5.1)
bode(Gs,fmin,fmax,0.01,"rad") 

//------------------------------------------------------------------
title(['Bode plot for a transfer function with complex poles';...
 '(a) magnitude...
 (b) phase'],'fontsize',3)

//------------------------------------------------------------------
