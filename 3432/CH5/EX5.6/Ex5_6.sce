//Example 5.6
//Root locus for satellite attitude control with a 
//Transition value for the pole.

xdel(winsid())//close all graphics Windows
clear;
clc;

//------------------------------------------------------------------
//System transfer function and its root locus 

s=poly(0,'s');
sysL=(s+1)/(s^2*(s+9));
evans(sysL)

//Title, labels and grid to the figure
exec .\fig_settings.sci; // custom script for setting figure properties
title(['Root locus for', '$L(s)=(s+1)/(s^2(s+9))$'],'fontsize',3)
zoom_rect([-6 -3 2 3])
h=legend('');
h.visible = "off"

//------------------------------------------------------------------
