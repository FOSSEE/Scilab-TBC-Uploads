//Example 6.8
// Nyquist plot for a second order system.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//System transfer function and its root locus
s=poly(0,'s');
g=1/(s+1)^2;
sysG=syslin('c',g);

evans(sysG);
exec .\fig_settings.sci; //custom script for setting figure properties
f=gca();
f.x_location = "origin"
f.y_location = "origin"
title(['Root locus of','$G(s)=1/(s+1)^2$','with respect to K'],...
'fontsize',3)
zoom_rect([-3,-2,2,3])
h=legend('');
h.visible = "off"
//------------------------------------------------------------------
figure(1)
//The bode plot of the system
fmin=0.01/2/%pi; //mininmum frq. in Hz for response (0.1 rad/sec)
fmax=100/2/%pi; //maximum frq. in Hz for response (100 read/sec)

//Bode plot for frequency in Hz (scilab ver. 5.4.1)
//bode(g,fmin,fmax); 
//OR 
//Bode plot for frequency in rad/sec (scilab ver. 5.5.1)
bode(sysG,fmin,fmax,0.01,"rad") 
title(['Open loop bode plot for', '$G(s)=1/(s+1)^2$'],'fontsize',3);
exec .\fig_settings.sci; //custom script for setting figure properties
//------------------------------------------------------------------

figure(2)
//The nyquist plot of the system
nyquist(sysG);
title('Nyquist plot of the evaluation of K G(s) for s=C1 and K=1'...
,'fontsize',3);
exec .\fig_settings.sci; //custom script for setting figure properties
f=gca();
f.x_location = "origin"
f.y_location = "origin"
xset('color',2)
//------------------------------------------------------------------
