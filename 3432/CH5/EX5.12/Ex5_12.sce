//Example 5.12
//Negative root Locus for an Airplane.

xdel(winsid())//close all graphics Windows
clear;
clc;


//------------------------------------------------------------------
//System transfer function and its root locus 

s=poly(0,'s');
Ls=-(s-6)/(s*(s^2+4*s+13));
evans(Ls)

//Title, labels and grid to the figure
exec .\fig_settings.sci; //custom script for setting figure properties
title(['Negative root locus for','$L(s)=\frac{s-6}{s(s^2+4s+13)}$'],...
'fontsize',3)
zoom_rect([-5 -6 10 6])
h=legend('');
h.visible = "off"

//------------------------------------------------------------------
