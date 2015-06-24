//Ex 7.5
clc;clear;close;
format('v',5);
fo=100;//kHz(Free running frequency)
V=6;//V(both +ve & -ve value)
C=1;//micro F(Demodulation capacitor)
fL=8*fo/(V-(-V));//Hz(both +ve & -ve value)
fC=sqrt(fL*1000/(2*%pi*3.6*10^3*C*10^-6));//kHzz(both +ve & -ve value)
LR=2*fL;//kHz(Lock range)
disp(LR,"Lock Range(kHz)");
CR=2*fC/1000;//kHz(Capture range)
disp(CR,"Capture Range(kHz)");
RT=10;//kohm(Assumed)
CT=1.2/(4*RT*1000*fo*10^3);//F
disp("Design values are : ");
disp("Resistance RT can be chooosen as 10 kohm.");
format('v',9);
disp(CT,"Capacitance CT(F)");
