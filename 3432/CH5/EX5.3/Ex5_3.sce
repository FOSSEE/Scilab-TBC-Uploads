//Example 5.3
//Root locus for satellite attitude control with PD control.

xdel(winsid())//close all graphics Windows
clear;
clc;

//------------------------------------------------------------------
//System transfer function and its root locus 

s=poly(0,'s');
sysS=(s+1)/(s^2);
evans(sysS,100)

//Title, labels and grid to the figure
exec .\fig_settings.sci; // custom script for setting figure properties
title(['Root locus for','$L(s)=G(s)=(s+1)/s^2$'],'fontsize',3)
zoom_rect([-6 -3 2 3])
h=legend('');
h.visible = "off"

//------------------------------------------------------------------
