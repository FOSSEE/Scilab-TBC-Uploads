clear;
clc;

d=15;
Vr=11e3/sqrt(3);
pfr=.8;
Pd=5e6;
Pl=.12*Pd;
l=1.1e-3;
L=l*d;

I= Pd/(3*pfr*Vr);
R=Pl/(3*I*I);
X=2 * %pi* 50 *L;
pfa=acos(pfr);
Vs=Vr + (I * R * pfr) + (I * X * sin(pfa));
vs=sqrt(3)*Vs;

VR=(Vs-Vr)/Vr;

mprintf("\n(a) Voltage Regulation = %.2f percent ", VR*100);

pfa0=atan(R/X);
pf0=cos(pfa0);

mprintf("\n(b) pf at VR=0 = %.3f ", pf0);

I0= (I* pfr)/pf0;
Ic= (I * sin(pfa))+(I0*sin(pfa0));
Xc=Vr/Ic
C=1/(100*%pi*Xc);

mprintf("\n(c) C = %.1f e-6 F", C*1e6);

