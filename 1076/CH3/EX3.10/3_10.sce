clear;
clc;

d=100;
f=50;
r=.153;
l=1.21e-3;
c=.00958e-6;
xl=2*%pi*f*l;
xc=1/(2*%pi*f*c);
Vr=110e3/sqrt(3);
Pr=20e6;
pf=.9;
pfa=-1*acos(pf);
Irm=Pr/(3*Vr*pf);
Ir=complex(Irm *pf, Irm * sin(pfa));

Z=complex(r,xl) * d;
Y=complex(0,1/xc) *d;

//disp(abs(Z),Y,abs(Ir));

Vs=(Vr*(1+((Z*Y)/2)))+ (Ir*Z);
V=abs(Vs);
vs=sqrt(3)*V*1e-3;
mprintf("\nSending End Voltage = %.2f kV",vs);

Is=(Vr*Y*(1+(Z*Y/4)))+(Ir*(1+(Y*Z/2)));
I=abs(Is);
mprintf("\nSending End Current = %.2f A",I);

phi1=atan(imag(Vs)/real(Vs))*(180/%pi);
phi2=atan(imag(Is)/real(Is))*(180/%pi);
phi=phi1-phi2;
pfs=cosd(phi);
mprintf("\nSending End Power factor = %.3f  ",pfs);


Vr0=V/(1+(Y*Z/2));
V0=abs(Vr0);
VR=(V0-Vr)/Vr;
mprintf("\nVoltage Regulation = %.2f ",VR*100);

eff=Pr*100/(3*pfs*V*I)
mprintf("\nEfficiency = %.0f percent ",eff);
