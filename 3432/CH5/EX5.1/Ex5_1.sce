//Example 5.1
//Root locus of a Motor Position Control.

xdel(winsid())//close all graphics Windows
clear;
clc;

//------------------------------------------------------------------

//System transfer function and its root locus 

s=poly(0,'s');
Ls=1/(s*(s+1));

//Title, labels and grid to the figure
exec .\fig_settings.sci; //custom script for setting figure properties
evans(Ls)
title(['Root locus for', '$L(s)=1/[s(s+1)]$'],'fontsize',3)
zoom_rect([-2 -1.5 2 1.5])
sgrid([0.5],1,5)
xset("font",1,1.5) 
xstring(-1.2,1.1,'$\theta=sin^{-1} \xi$",0,0)
h=legend('');
h.visible = "off"

//------------------------------------------------------------------
