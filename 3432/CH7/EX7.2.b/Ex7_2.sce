//Example 7.2
//Cruise control system step response.

xdel(winsid())//close all graphics Windows
clear;
clc;
clc;
//------------------------------------------------------------------
//Cruise control system parameters
m=1000;
b=50;
u=500;

// Transfer function
s=%s; // or 
s=poly(0,'s');
sys1=syslin('c',(1/m)/(s+b/m));
disp(sys1)
//------------------------------------------------------------------
F=[0 1; 0 -b/m];
G=[0;1/m];
H=[0 1];
J=0;
sys=syslin('c',F,G,H,J);
//------------------------------------------------------------------
//step response to u=500;
t=0:0.5:100;
v=csim('step',t,u*sys);
plot(t,v,2)

//Title, labels and grid to the figure
exec .\fig_settings.sci; // custom script for setting figure properties
title('Responses of car velocity to a step in u','fontsize',3)
xlabel('Time t (sec.)','fontsize',2)
ylabel('Amplitude','fontsize',2)
//------------------------------------------------------------------
