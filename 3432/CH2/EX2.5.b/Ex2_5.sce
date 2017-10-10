//Example 2.5
//(b) step response of pendulum

xdel(winsid())//close all graphics Windows
clear;
clc;

//------------------------------------------------------------------
//Pendulum parameters
m=0.5;
l=1;
g=9.81;

// Transfer function
s=%s;
sys=syslin('c',(1/(m*l^2))/(s^2+g/l));

//step response to u=500;
t=0:0.02:10;
theta=csim('step',t,sys);
plot(t,theta*57.3);

//Title, labels and grid to the figure
exec .\fig_settings.sci; // custom script to set figure properties
title('Response of pendulum to a step input in the applied torque',...
'fontsize',3);
xlabel('Time t (sec.)','fontsize',2);
ylabel('Pendulum angle (degree)','fontsize',2);

//------------------------------------------------------------------
