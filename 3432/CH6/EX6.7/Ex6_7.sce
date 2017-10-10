//Example 6.7
//Computation of velocity error constant Kv from Bode plot

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//System transfer function and its bode plot
K=10;
s=poly(0,'s');
Gs=syslin('c',(K)/(s*(s+1)));
//The bode plot of the system

fmin=0.01/2/%pi; //mininmum frq. in Hz for response (0.1 rad/sec)
fmax=10/2/%pi; //maximum frq. in Hz for response (100 read/sec)
//------------------------------------------------------------------
//Bode plot for frequency in Hz (scilab ver. 5.4.1)
//bode(g,fmin,fmax); 
//OR 
//Bode plot for frequency in rad/sec (scilab ver. 5.5.1)
bode(Gs,fmin,fmax,0.01,"rad")
title(['Determination of Kv from the Bode plot for the system',...
'$10/[s(s+1)]$'],'fontsize',3)
//choose frequency (rad) and magnitude from bode plot and calculate Kv
//Here at w=0.01, magngitude in db is M=60 
//i.e actual magnitude of the reponse is |A|=10^(M/20)
w=0.01;      // in rad
M=60         // in db
A=10^(M/20)  //actual gain

//Velocity error constant Kv=w*|A(w)|
Kv=w*A;
disp(Kv,"The Velocity error Constant from bode plot is: ")
//------------------------------------------------------------------
// Computation of the Kv
[frq repf]=repfreq(Gs,fmin,fmax);
//frq in Hz, repf is freq. response in rectangular form.  
//From bode plot, Kv=w*|A(w)|
//i.e Kv=2*pi*f*|A(2*pi*f)|

idx=1;//selecting the frequency and response at that frequency from arrays
Kv=2*%pi*frq(idx)*abs(repf(idx))
disp(Kv,"The Velocity error Constant is computed at 0.0015915 Hz (0.01 rad/sec) : ")
//------------------------------------------------------------------
