clc;
T=20+273;
y=1.4;
Ti=T*4^([y-1]/y)
ir=Ti-T;
actual_r=ir/0.8;
cp=1.005;
P=cp*actual_r;
Cai=150;
Cbi=15000*%pi*250/(60*10^3);
Cwi=Cai*sin(25*%pi/180);
Cbe=15000*%pi*590/(60*10^3);
Cwe=Cbe;
P=178.9*10^3;
C_we=(P+Cbi*Cwi)/(Cbe);
Sf=C_we/Cwe;
disp(Sf,"Slip factor is:");
