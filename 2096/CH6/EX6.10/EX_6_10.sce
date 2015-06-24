
//Example 6.10// phase errors and burden
clc;
clear;
Vs=100;//IN VOLTS
Kt=10;//TRANSFORMATION RATIO
Rp=86.4;//primry resistance IN OHMS
Xp=62.5;//primary reactance in ohms
Rs=0/78;//secondary resistance in ohms
Xe=102;//reactance in ohms
Io=0.03;//in amperes
pf=0.42
csd1=0.42;//
sd=sqrt(1-csd1^2);//
Iw=Io*csd1;//in amperes
Im=Io*sd;//in amperes
pa= ((Iw*Xp)-(Im*Rp))/(Kt*Vs);//phase angle in radians AT NO LOAD
csd2=1;//AT BURDEN
sd2=0;//
Is= 1.5632/10.2;//in amperes
B=Vs*Is;//BURDEM IN VA
disp(pa,"phase angle in radians at no load")
//phase angle is calulated wrong in the textbook
disp(B,"burden in VA is")
