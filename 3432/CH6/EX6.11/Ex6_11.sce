//Example 6.11
// Stability properties for a conditionally stable system.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//System transfer function 
s=poly(0,'s');
Gs=(s+10)^2/(s^3);
evans(Gs,100)
exec .\fig_settings.sci; //custom script for setting figure properties
zoom_rect([-40 -20 5 20])
title(["Root locus for","$G(s)=(s+10)^2/s^3$"],'fontsize',3)
h=legend('');
h.visible = "off"
Gs1=syslin('c',(s+10)^2/(s^3));
//------------------------------------------------------------------
//The nyquist plot of the system
figure;
nyquist(7*Gs1,8/2/%pi,100/2/%pi,0.005)
exec .\fig_settings.sci; //custom script for setting figure properties
title(["Nyquist plot for","$G(s)=(s+10)^2/s^3$"],'fontsize',3)
f=gca();
f.x_location = "origin";
f.y_location = "origin";
xset("color",2);
//------------------------------------------------------------------
