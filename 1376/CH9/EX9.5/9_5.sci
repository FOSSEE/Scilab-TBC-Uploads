//9.5
clc;
Vp=1000;
Vs=100;
n=Vp/Vs;
pf_no_load=0.4;
sina=0.4;
cosa= (1-sina^2)^0.5;
tana=sina/cosa;
Im=0.02;
Ie=Im*tana;
xp=66.2;
rp=94.5;
//At no load Is=0 so
theta=((Ie*xp)-(Im*rp))/(n*Vs);
printf("Phase angle error at no load=%.4f",theta)