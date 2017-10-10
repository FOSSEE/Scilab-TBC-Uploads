//Example 6.17
//Lag compensation for Temperature Control System.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//System transfer function 
s=poly(0,'s');
numG=1;
denG=(s/0.5+1)*(s+1)*(s/2+1);
G=numG/denG;
//Dc gain
K=3; //to set phase requirement

KGs=syslin('c',K*G);

//Lag compensator
numD=5*s+1;
denD=15*s+1;
D=3*numD/denD;
Ds=syslin('c',D);

KGDs=Ds*KGs; //compensated system

//The bode plot of the system with K
bode([KGs;KGDs],0.01/2/%pi,10/2/%pi,['KG';'KGD'],"rad");
exec .\fig_settings.sci; //custom script for setting figure properties
title('Frequency response of lag-compensation design','fontsize',3)

//------------------------------------------------------------------
//Margins of uncompensated and compensated systems
[gm1,wcg1]=g_margin(KGs);
[pm1,wcp1]=p_margin(KGs);
disp(wcp1*2*%pi,"Wcp",wcg1*2*%pi,"Wcg",pm1,"Phase margin",...
gm1,"Gain margin","Uncompensated system :")

[gm2,wcg2]=g_margin(KGDs);
[pm2,wcp2]=p_margin(KGDs);
disp(wcp2*2*%pi,"Wcp",wcg2*2*%pi,"Wcg",pm2,"Phase margin",...
gm2,"Gain margin","Compensated system :")

//------------------------------------------------------------------
//step response
//closed loop system
Gc=KGDs/(KGDs+1);
figure;
t=0:0.05:20;
v=csim('step',t,Gc);
plot2d(t,v)

//Title, labels and grid to the figure
exec .\fig_settings.sci; //custom script for setting figure properties
title('Step response for lag compensation design','fontsize',3)
xlabel('Time t (sec.)','fontsize',2)
ylabel('y','fontsize',2)
//------------------------------------------------------------------
