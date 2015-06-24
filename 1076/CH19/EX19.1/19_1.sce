clear;
clc;

V=400e3;
X=96;
Y=.001 * exp(%i * 90/180*%pi);
Sb=500e6;
Pr=2;

Z=complex(0,X);
Zb=V*V/Sb;
A=1+(Z*Y/2);
B=Z/Zb;


Vs=1;
Vr=.95;
d1=asin(Pr*abs(B)/(Vs*Vr));
Qr1=((Vs*Vr)/abs(B)) * cos(d1) - (abs(A)* Vr*Vr/abs(B))
Qs1= (abs(A)* Vs*Vs/abs(B)) - ((Vs*Vr)/abs(B)) * cos(d1)

mprintf("\n(a) Qr= %.3f MVAR, Qs=%.3f MVAR", Qr1, Qs1);

Vs=1;
Vr=.9;
d2=asin(Pr*abs(B)/(Vs*Vr));
Qr2=((Vs*Vr)/abs(B)) * cos(d2) - (abs(A)* Vr*Vr/abs(B))
Qs2= (abs(A)* Vs*Vs/abs(B)) - ((Vs*Vr)/abs(B)) * cos(d2)

mprintf("\n(b) Qr= %.3f MVAR, Qs=%.3f MVAR", Qr2, Qs2);

Vs=1;
Vr=1;
d3=asin(Pr*abs(B)/(Vs*Vr));
Qr3=((Vs*Vr)/abs(B)) * cos(d3) - (abs(A)* Vr*Vr/abs(B))
Qs3= (abs(A)* Vs*Vs/abs(B)) - ((Vs*Vr)/abs(B)) * cos(d3)

mprintf("\n(c) Qr= %.3f MVAR, Qs=%.3f MVAR", fix(Qr3*1000)/1000, fix(Qs3*1000)/1000);
