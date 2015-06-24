clear;
clc;

V=220e3;
Zl=complex(.8, .2);

Xline=.2;
Xt=.05;
Sb=100e6;
Vb=220e3;
v=V/Vb;

X=Xline+ Xt;
I=conj(Zl/v)
phi1=atand(imag(I)/real(I))

Vbus=1+ I * X*exp(%i * %pi/2)

phi2=atand(imag(Vbus)/real(Vbus))

vbus=abs(Vbus)
vbus=round(vbus *1000)/1000
vbus=vbus*Vb*1e-3;
pf=cosd(-phi1+phi2)

mprintf("Voltage at bus = %.2f Kv, pf= %.3f lagging", vbus, pf)
