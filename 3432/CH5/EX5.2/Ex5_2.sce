//Example 5.2
//Root locus with respect to a plant open loop pole.
xdel(winsid())//close all graphics Windows
clear;
clc;

//------------------------------------------------------------------
//System transfer function and its root locus 
s=poly(0,'s');
Gs=s/(s*s+1);

//Title, labels and grid to the figure
exec .\fig_settings.sci; //custom script for setting figure properties
evans(Gs,100)
title(['Root locus vs. damping factor','$c$',...
'for','$1+G(s)=1+1/[s(s+c)]=0$'],'fontsize',3)
zoom_rect([-2 -1.5 2 1.5])
h=legend('');
h.visible = "off"

//------------------------------------------------------------------

