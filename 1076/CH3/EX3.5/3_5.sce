clear;
clc;

Vs=11e3/sqrt(3);
Pd=1200e3;
R=5.31;
X=5.54;
pfr=.8;


VIr= Pd/(3*pfr);
a=1;
b=-1*Vs;
pfa=acos(pfr)
c=(VIr * R * pfr) + (VIr * X * sin(pfa))

Vr=(-b+sqrt(b^2 - (4*a*c)))/(2*a);

I=VIr/Vr;
vr=sqrt(3)*Vr;

mprintf("Recieving end Voltage = %.3f KV and Current = %.2f A ",vr/1000,I);
