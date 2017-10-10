//Example 6.9
// Nyquist plot for a third order system.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//System transfer function 
s=poly(0,'s');
g=syslin('c',1/(s*(s+1)^2));

//The bode plot of the system
fmin=0.01/2/%pi;
fmax=100/2/%pi;
//[frq,repf]=repfreq(g1,fmin,fmax,0.01);
bode(g,fmin,fmax,"rad");
frq=[1,10]/2/%pi;
[frq, repf]=repfreq(g,frq);
[db, phi]=dbphi(repf);
plot(frq*2*%pi,db,'ro');
exec .\fig_settings.sci; //custom script for setting figure properties
title(["Bode plot for","$G(s)=1/[s(s+1)^2]$"],'fontsize',3)
//zoom_rect([[0.1 0] -70 [12 -180] 20])
xset("font size", 3);

xstring(1,0,"$C\,\, (\omega=1)$",0,0);
xstring(2,-75,"$E\,\, (\omega=10)$",0,0);
f=gca();

//------------------------------------------------------------------
//The nyquist plot of the system
figure;
nyquist(g,0.8/2/%pi,10/2/%pi,0.02)

exec .\fig_settings.sci; //custom script for setting figure properties
title(["Nyquist plot for","$G(s)=1/[s(s+1)]^2$"],'fontsize',3)
f=gca();
f.x_location = "origin";
f.y_location = "origin";
zoom_rect([-1 -0.2 0.5 0.2]);
xset("clipping", -1.2, 0.2, 1.4,0.4);
xset("font size", 3);
xset("color",2);
xstring(-0.6,0.1,"${\fgcolor{blue}{\omega<0}}$",0,0);
xstring(-0.6,-0.1,"${\fgcolor{blue}{\omega>0}}$",0,0);
xstring(-0.7,0.005,"${\fgcolor{blue}{\omega=\pm 1}}$",0,0);
xstring(-1,-0.2,...
"${\fgcolor{blue}{\text{From \infty at \omega=0^+}}$",0,0);
 xstring(-0.7,0.15,"${\fgcolor{blue}...
 {\text{Towards \infty at \omega=0^-}}$",0,0);
xstring(-0.525,-0.04,"C",0,0);
xstring(-0.075,0,"E",0,0);
//------------------------------------------------------------------
