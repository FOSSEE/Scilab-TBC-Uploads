//Example 6.16
//Lead compensation for Servomechanism System.

xdel(winsid())//close all graphics Windows
clear;
clc;
//------------------------------------------------------------------
//System transfer function 
s=poly(0,'s');
numG=10;
denG=s*(s/2.5+1)*(s/6+1);
G=numG/denG;
//Dc gain
K=1;

KGs=syslin('c',K*G);

//Lead compensator 1
numD=s/2+1;
denD=s/20+1;
D1=numD/denD;
D1s=syslin('c',D1);

KGD1s=D1s*KGs; //compensated system

//Lead compensator 2
numD=s/4+1;
denD=s/40+1;
D2=D1*numD/denD; //double compensator
D2s=syslin('c',D2);


KGD2s=D2s*KGs; //compensated system

//The bode plot of the system with K
bode([KGs;KGD1s;KGD2s],0.1/2/%pi,100/2/%pi,['KG';'KGD1';'KGD2'],"rad");
exec .\fig_settings.sci; //custom script for setting figure properties
title('Bode plot for lead compensation design','fontsize',3)
//------------------------------------------------------------------
//Margins of uncompensated and compensated systems
[gm1,wcg1]=g_margin(KGs);
[pm1,wcp1]=p_margin(KGs);
disp(wcp1*2*%pi,"Wcp",wcg1*2*%pi,"Wcg",pm1,...
"Phase margin",gm1,"Gain margin","Uncompensated system :")

[gm2,wcg2]=g_margin(KGD1s);
[pm2,wcp2]=p_margin(KGD1s);
disp(wcp2*2*%pi,"Wcp",wcg2*2*%pi,"Wcg",pm2,...
"Phase margin",gm2,"Gain margin","System with D1 compensator :")

[gm3,wcg3]=g_margin(KGD2s);
[pm3,wcp3]=p_margin(KGD2s);
disp(wcp3*2*%pi,"Wcp",wcg3*2*%pi,"Wcg",pm3,...
"Phase margin",gm3,"Gain margin","System with D2 compensator :")
//------------------------------------------------------------------
