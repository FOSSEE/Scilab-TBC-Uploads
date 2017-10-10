//Example 6.12
// Nyquist plot for a system with Multiple Crossover frequencies

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//System transfer function 
s=poly(0,'s');
K=85;
g1=K*(s+1)/(s^2*(s^2+2*s+82));
g2=(s^2+2*s+43.25)/(s^2+2*s+101);

Gs=syslin('c',g2*g1);
//------------------------------------------------------------------
figure;
//The nyquist plot of the system
nyquist(Gs,0.5/2/%pi,100/2/%pi,0.005)
title(["Nyquist plot for the complex system";...
"$G(s)=85(s+1)(s^2+2s+43.25)/[((s^2+2s+82)(s^2+2s+101)]$"],...
'fontsize',3)
exec .\fig_settings.sci; //custom script for setting figure properties
zoom_rect([-2 -1 0.6 1])
f=gca();
f.x_location = "origin";
f.y_location = "origin";
xset("color",2);
//------------------------------------------------------------------
//The bode plot of the system
gm=g_margin(Gs);
pm=p_margin(Gs)
disp(pm,"Phase margin",gm,"Gain margin")
figure(1)
bode(Gs,0.01/2/%pi,100/2/%pi,0.01)
title(["Bode plot for";...
"$G(s)=85(s+1)(s^2+2s+43.25)/[((s^2+2s+82)(s^2+2s+101)]$"],...
'fontsize',3)
exec .\fig_settings.sci; //custom script for setting figure properties
//------------------------------------------------------------------

