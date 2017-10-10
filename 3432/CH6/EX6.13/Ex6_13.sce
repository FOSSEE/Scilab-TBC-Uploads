//Example 6.13
// Use of simple design criterion for spacecraft attitude control.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//System transfer function 
s=poly(0,'s');
G=1/s^2;
g1=syslin('c',G);

//The bode plot of the system
zoom_rect([0.01 -20 100 60])
bode(g1,0.05/2/%pi,2/2/%pi,"rad")
exec .\fig_settings.sci; //custom script for setting figure properties
title('Magnitude of the spacecrafts frequency','fontsize',3)
//------------------------------------------------------------------

K=1;
Td=20;
Ds=(Td*s+1);
gd1=syslin('c',K*Ds*G);

////The bode plot of compnenstaed open loop system
figure
bode(gd1,0.01/2/%pi,1/2/%pi,"rad")
exec .\fig_settings.sci; //custom script for setting figure properties
title('Bode plot for compensated open-loop transfer function'...
,'fontsize',3)
xstring(0.02,70,"-40db/decade",0,0);
xstring(0.2,40,"-20db/decade",0,0);

//The bode plot of compnenstaed closed loop system
K=0.01;
gc1=K*gd1/(1+K*gd1);
gcl1=syslin('c',gc1);
figure
bode(gcl1,0.01/2/%pi,10/2/%pi,"rad")
title('Closesd loop frequency response','fontsize',3)
exec .\fig_settings.sci; //custom script for setting figure properties

//Bandwidth
[frq, repf,splitf]=repfreq(gc1,[0.01/2/%pi:0.001:10/2/%pi]);
[db, phi]=dbphi(repf);
w=find(db<=db(1)-3);
wc=w(1);
frqc=frq(wc)*2*%pi;

plot2d3(frqc,db(wc),5)

[r c]=size(frq(1:w(1)));
magn=db(wc)*ones(r,c)
plot(frq(1:w(1))*2*%pi,magn,"b--")
temp_db=db(w);
[r c]=size(db(w));
temp_w=frqc*ones(r,c);
plot(temp_w,temp_db,"b--")
xset("font size", 3);
xstring(0.04,-16,"$\omega_{BW}$");
xstring(frqc,-4,"-3db");
xset("line style",4)
xarrows([0.01;frqc],[-10;-10],-0.2,5)
xarrows([frqc;0.01],[-10;-10],-0.2,5)
//------------------------------------------------------------------
//Step response of PD compnensation
figure
t=0:0.5:100;
v=csim('step',t,gcl1);
plot2d(t,v)

//Title, labels and grid to the figure
exec .\fig_settings.sci; //custom script for setting figure properties
title('Step response for PD compensation','fontsize',3)
xlabel('Time t (sec.)','fontsize',2)
ylabel('$\theta$','fontsize',2)
//-------------------------------------------------------------------
