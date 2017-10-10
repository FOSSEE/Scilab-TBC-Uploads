//Example 6.2
//Frequency response characteristics of Lead compensator.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//System transfer function and its bode plot 
K=1, T=1, alpha=0.1
s=poly(0,'s');
sysD=syslin('c',K*(T*s+1)/(alpha*T*s+1));

//The bode plot of the system

fmin=0.1/2/%pi; //mininmum frq. in Hz for response (0.1 rad/sec)
fmax=100/2/%pi; //maximum frq. in Hz for response (100 read/sec)
//------------------------------------------------------------------
//Bode plot for frequency in Hz (scilab ver. 5.4.1)
//bode(g,fmin,fmax); 
//OR 
//Bode plot for frequency in rad/sec (scilab ver. 5.5.1)
bode(sysD,fmin,fmax,"rad") 

//------------------------------------------------------------------
title('(a) Magnitude and  (b) phase for the lead compensator',...
'fontsize',3)
exec .\fig_settings.sci; //custom script for setting figure properties
//------------------------------------------------------------------
