clear;
clc;

Pd=1e6;
pf=.8;
v1=30e3;
v2=10e3;
Rl=25;
Xl=12;
rt=.8;
xt=2.5;
n=v1/v2;

Rt=rt*(n^2);
Xt=xt*(n^2);

R=Rt+Rl;
X=Xt+Xl;

Vr=v1/sqrt(3);
I=Pd/(3*Vr*.8);

pfa=acos(pf)
Vs=Vr + (I * R * pf) + (I * X * sin(pfa));
vs=sqrt(3)*Vs*1e-3;

VR=(Vs-Vr)/Vr;

mprintf("\nSending End Voltage = %.2f KV",vs);
mprintf("\nVoltage Regulation= %.2f",VR*100);
