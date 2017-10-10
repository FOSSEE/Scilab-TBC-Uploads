clear;
clc;
Xtf=.2+.2+(.3*.6/0.9);
pi=0.9;
po=pi;
del1=asin(Xtf*pi/(1.2*1));

Pm=1.2*1/Xtf;
//fault condition
Xtf1=(.4*.3+.3*.3+.3*.4)/.3;
Pm1=1.2*1/Xtf1;
//post fault condition
Xtf2=.2+.2+.3;
Pm2=1.2*1/Xtf2;
delm=(%pi-(asin(pi/Pm2)));

delc=acos((pi*(delm-del1)+Pm2*cos(delm)-Pm1*cos(del1))/(Pm2-Pm1));


mprintf("rotor angle is %.3f radian \n",del1);
mprintf("Critical clearing angle is %.3f radian",delc);
