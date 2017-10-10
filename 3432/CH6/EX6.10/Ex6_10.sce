//Example 6.10
// Nyquist plot for an Open-loop unstable system.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//System transfer function 
s=poly(0,'s');
sysG=(s+1)/(s*(s/10-1));
evans(sysG,50)
exec .\fig_settings.sci; //custom script for setting figure properties
title(["Root Locus for","$G(s)=(s+1)/[s(s/10-1)]$"],'fontsize',3)
zoom_rect([-5 -4 5 4])
f=gca();
f.x_location = "origin"
f.y_location = "origin"
h=legend('');
h.visible = "off"

g1=syslin('c',(s+1)/(s*(s/10-1)));
//------------------------------------------------------------------
//The bode plot of the system
figure;
bode(g1,0.1/2/%pi,100/2/%pi,"rad")
exec .\fig_settings.sci; //custom script for setting figure properties
title(["Bode plot for","$G(s)=(s+1)/[s(s/10-1)]$"],'fontsize',3)
//bode(g,2*%pi*0.1,2*%pi*100)
//------------------------------------------------------------------
figure;
//The nyquist plot of the system
nyquist(g1,0.5/2/%pi,100/2/%pi,0.05)
exec .\fig_settings.sci; //custom script for setting figure properties
title(["Nyquist plot for","$G(s)=(s+1)/[s(s/10-1)]$"],'fontsize',3)
f=gca();
f.x_location = "origin";
f.y_location = "origin";
zoom_rect([-2 -2 1 2]);
xset("color",2);
xset("font size", 3);
xstring(-1,1.5,"${\fgcolor{blue}{\omega>0}}$",0,0);
xstring(-1,-1.5,"${\fgcolor{blue}{\omega<0}}$",0,0);
xstring(-1.5,0,"${\fgcolor{blue}{\omega=\pm \sqrt{10}}}$",0,0);
xstring(-0.5,0.1,"${\fgcolor{blue}{\omega=\infty}}$",0,0);
xarrows([-0.2;0],[0.2;0],-1,2)
//------------------------------------------------------------------
