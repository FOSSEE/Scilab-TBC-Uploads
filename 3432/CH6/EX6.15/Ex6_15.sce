//Example 6.15
//Lead compensation for Temperature Control System.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//System transfer function 
s=poly(0,'s');
numG=1;
denG=(s/0.5+1)*(s+1)*(s/2+1);
sysG=numG/denG;
//Dc gain
K=9;

KGs=syslin('c',K*sysG);

//Lead compensator 1
numD=s+1;
denD=s/3+1;
D1=numD/denD;
D1s=syslin('c',D1);

KGD1s=D1s*KGs; //compensated system

//Lead compensator 2
numD=s/1.5+1;
denD=s/15+1;
D2=numD/denD;
D2s=syslin('c',D2);

KGD2s=D2s*KGs; //compensated system

//The bode plot of the system with K
bode([KGs;KGD1s;KGD2s],0.1/2/%pi,10/2/%pi,['KG';'KGD1';'KGD2'],"rad");
exec .\fig_settings.sci; // custom script for setting figure properties
title('Bode plot for lead compensation design','fontsize',3)
//------------------------------------------------------------------
//Margins of uncompensated and compensated systems
[gm1,wcg1]=g_margin(KGs);
[pm1,wcp1]=p_margin(KGs);
disp(wcp1*2*%pi,"Wcp",wcg1*2*%pi,"Wcg",pm1,...
"Phase margin",gm1,"Gain margin",...
"Uncompensated system :")

[gm2,wcg2]=g_margin(KGD1s);
[pm2,wcp2]=p_margin(KGD1s);
disp(wcp2*2*%pi,"Wcp",wcg2*2*%pi,"Wcg",pm2,...
"Phase margin",gm2,"Gain margin",...
"System with D1 compensator :")

[gm3,wcg3]=g_margin(KGD2s);
[pm3,wcp3]=p_margin(KGD2s);
disp(wcp3*2*%pi,"Wcp",wcg3*2*%pi,"Wcg",pm3,...
"Phase margin",gm3,"Gain margin",...
"System with D2 compensator :")
//------------------------------------------------------------------
//step response comparison
//closed loop system
Gc1=KGD1s/(KGD1s+1);
Gc2=KGD2s/(KGD2s+1);
figure;
t=0:0.05:20;
v1=csim('step',t,Gc1);
v2=csim('step',t,Gc2);
plot2d([t',t'],[v1',v2'])

//Title, labels and grid to the figure
exec .\fig_settings.sci; //custom script for setting figure properties
title('Step response for lead compensation design','fontsize',3)
xlabel('Time t (sec.)','fontsize',2)
ylabel('y','fontsize',2)

xset("font size", 3);
xarrows([2.5;1.5],[1.3;1.2],-1,1)
xstring(2.5,1.3,"D2",0,0)
xstring(4,1.2,"D1",0,0)
//------------------------------------------------------------------
