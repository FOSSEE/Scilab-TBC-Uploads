clear;
clc;

l=300
R=.4 *3
X=.8*3 
Vs=11e3/sqrt(3);
P=3000;
pf=.8
pfa=acos(pf)
VIr=P/(3*pf)

a=1;
b=-Vs
c=VIr * 1e3 * ((R*cos(pfa))+(X*sin(pfa)))
vr=(-b+sqrt((b*b )-  (4*a*c)))/(2*a)
Ir=VIr*1e3/vr;
Vr=vr*sqrt(3)/1000;
mprintf("\nReceiving End Voltage = %.2f kV",Vr)

Pl=3* (Ir)^2 * R/ 1000;
eff=P*100/(P+Pl)
mprintf("\nefficiency = %.2f percent",eff)
