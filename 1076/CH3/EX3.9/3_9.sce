clear;
clc;

R=48.7;
X=80.2;
Z=complex(R,X);
c=8.42e-9;
l=200;
C=c*l;
Y=complex(0,(C* 100*%pi));

Vr=88e3/sqrt(3);
Pr=13.5e6;
pf=.9;
pfa=-1* acos(pf);
Irm=Pr/(3*Vr*pf);
Ir=complex(Irm *pf, Irm * sin(pfa));

Vs=(Vr*(1+((Z*Y)/2)))+ (Ir*Z);
V=abs(Vs);
vs=sqrt(3)*V*1e-3;
phi=atan(imag(Vs)/real(Vs))*(180/%pi);
mprintf("\nSending End Voltage = %.2f kV",vs);
mprintf("\nSending End Power Angle = %.2f deg ",phi);

Is=(Vr*Y*(1+(Z*Y/4)))+(Ir*(1+(Y*Z/2)));
I=abs(Is);
mprintf("\nSending End Current = %.2f A",I);

Vr0=V/(1+(Y*Z/2));
V0=abs(Vr0);
VR=(V0-Vr)/Vr;
mprintf("\nVoltage Regulation = %.2f ",VR*100);
