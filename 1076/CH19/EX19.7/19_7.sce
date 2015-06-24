clear;
clc;
//the data used is from Ex 19.6, not 19.5 as incorrectly mentioned in statement
V=220e3;
Zl=complex(.8,0);

Xline=.2;
Xt=.05;
Sb=100e6;
Vb=220e3;
v=V/Vb;

X=Xline+ Xt;
I=conj(Zl/v)
phi1=atand(imag(I)/real(I))

Vbus=1+( I * X*exp(%i * %pi/2))

phi2=atand(imag(Vbus)/real(Vbus))

vbus=abs(Vbus)*Vb*1e-3;
pf=cosd(-phi1+phi2)


mprintf("Voltage at bus = %.1f Kv, pf= %.2f", vbus, pf)
disp("the data used is from Ex 19.6, not 19.5 as incorrectly mentioned in statement")
