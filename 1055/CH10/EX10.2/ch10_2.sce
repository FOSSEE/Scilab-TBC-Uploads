// Determine the settings of the tap changers required to maintain the voltage of load bus bar 
clear
clc;
l1=150;
tstr=1;
load2=72.65;
R=30;
P=(l1*(10^6))/3;
X=80;
Q=(load2*(10^6))/3;
Vs=(230*(10^3))/sqrt(3);
Vr=Vs;
ts2=1/(1-(((R*P)+(X*Q))/(Vs*Vr)));
ts=sqrt(ts2);
mprintf("ts=%.2f p.u\n",ts);
