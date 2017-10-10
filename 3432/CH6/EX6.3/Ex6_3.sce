//Example 6.3
//Bode Plot for Real Poles and Zeros.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//System transfer function and its bode plot
K=2000;
s=poly(0,'s');
Gs=syslin('c',(K*(s+0.5))/(s*(s+10)*(s+50)));

//The bode plot of the system
wmin=0.1;         // mininmum frq. in rad/sec for response
wmax=100;         // maximum frq. in red/sec for response
fmin=wmin/2/%pi   // mininmum frq. in Hz for response
fmax=wmax/2/%pi   // maximum frq. in Hz for response
//------------------------------------------------------------------
//Bode plot for frequency in Hz (scilab ver. 5.4.1)
//bode(g,fmin,fmax) 
//OR 
//(Only for scilab ver. 5.5.1)
//Bode (frequency scale in rad/sec)
// or gainplot or phaseplot plot with asymptotes
figure(0)
gainplot(Gs,fmin,fmax);
bode_asymp(Gs,wmin,wmax);
xstring(0.03,22,"slope=-1(-20db/dec)",0,0);
xstring(0.2,9,"slope=0",0,0);
xstring(3,7,"slope=-1(-20db/dec)",0,0)
xstring(0.9,-8,"slope=-2(-40db/dec)",0,0)
title('Composit plots (a) magnitude plot','fontsize',3);
h=legend('');
exec .\fig_settings.sci; //custom script for setting figure properties
h.visible = "off"
//------------------------------------------------------------------

//phase plot for poles and zeros
zr=((s/0.5)+1)/s //infact this is zero and pole at origin. 
zr=syslin('c', zr);
pl1=1/((s/10)+1) 
pl1=syslin('c', pl1);
pl2=1/((s/50)+1) 
pl2=syslin('c', pl2);
figure(1)
phaseplot([Gs;zr;pl1;pl2],fmin,fmax);
xstring(5.5,-14,"$\frac {1}{s/0.5+1}$",0,0);
xstring(2.8,-22,"$\frac{1}{s/50+1}$",0,0);
xstring(2.5,-60,"$\frac{1}{s/10+1}$",0,0); 
xstring(1.2,-100,["Composite";"(Actual)"],0,0);
title('Composit plots (b) Phase','fontsize',3);
exec .\fig_settings.sci; //custom script for setting figure properties

//------------------------------------------------------------------
figure(2)
bode(Gs,fmin,fmax,"rad"); //frequency scale n radians
bode_asymp(Gs,wmin,wmax);
exec .\fig_settings.sci; //custom script for setting figure properties
title('(c) magnitude plot and phase plot approximate and actual...
','fontsize',3)
xstring(2.8,-22,"$\frac{1}{s/50+1}$",0,0);
h=legend('');
h.visible = "off"

//------------------------------------------------------------------
