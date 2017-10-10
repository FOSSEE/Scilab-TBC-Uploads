//Example 2.1
//(b) step response of Cruise control system

xdel(winsid())//close all graphics Windows
clear;
clc;

//------------------------------------------------------------------
//Cruise control parameters
m=1000;
b=50;
u=500;

// Transfer function
s=%s; // or 
s=poly(0,'s');
sys=syslin('c',(1/m)/(s+b/m))

//step response to u=500;
t=0:0.5:100;
v=csim('step',t,u*sys);
plot2d(t,v,2)

//Title, labels and grid to the figure
exec .\fig_settings.sci; //custom script for setting figure properties
title('Responses of car velocity to a step in u','fontsize',3)
xlabel('Time t (sec.)','fontsize',2)
ylabel('Amplitude','fontsize',2)

//------------------------------------------------------------------
