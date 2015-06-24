clc;
Rs=50;
IE=0.465*10**-3;
re1=53.8;
Ri=53.8;
Ris=52.4;
rL=3.38*10**3;
Avs=rL/(Rs+re1);
disp(Avs);
Av=rL/re1;
disp(Av);
Vs=10;
vo=Avs*Vs;
vin=vo/Av;
disp('mV',vin,"vin=");

