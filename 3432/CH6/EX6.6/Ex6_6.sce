//Example 6.6
//Bode Plot for Complex Poles and Zeros:
//Satellite with Flexible appendages.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//System transfer function and its bode plot
K=0.01;
s=poly(0,'s');
NumG=K*(s^2+0.01*s+1);
DenG=s^2*((s^2/4)+0.02*(s/2)+1)
sysG=syslin('c',NumG/DenG);

fmin=0.09/2/%pi; //mininmum frq. in Hz for response (0.1 rad/sec)
fmax=11/2/%pi; //maximum frq. in Hz for response (100 read/sec)
//------------------------------------------------------------------
//Bode plot for frequency in Hz (scilab ver. 5.4.1)
//bode(g,fmin,fmax); 
//OR 
//Bode plot for frequency in rad/sec (scilab ver. 5.5.1)
bode(sysG,fmin,fmax,0.01,"rad") 

//------------------------------------------------------------------
title(["Bode plot for a transfer function with complex...
poles and zeros"; "(a) magnitude (b) phase"],'fontsize',3)
//------------------------------------------------------------------

disp('NOTE : Result of the above example can be verified by checking the figures shown in example 6.5')
