clear;
clc;

Vr=132e3/sqrt(3);
P=40e6;
pf=.8;
Irm=P/(3*Vr)
pfa=-1* acos(pf);
Ir=complex(Irm *pf, Irm * sin(pfa));

Z=complex(52, 200)
Y=complex(0, 1.5e-3)
YZ=Y*Z;

A=1+ (YZ/2);
D=A;
B=Z;
C=Y*(1+(YZ/4));

Vs=(A*Vr)+(B*Ir);
V=abs(Vs)
vs=V*sqrt(3)*1e-3;
mprintf("(a)\nSending End Voltage= %.0f kV", vs)

Is=(C*Vr)+(D*Ir);
I=abs(Is)
mprintf("\nSending End Current= %.1f A", I)

phi1=atan(imag(Vs)/real(Vs))*(180/%pi);
phi2=atan(imag(Is)/real(Is))*(180/%pi);
phi=phi1-phi2;
pfs=cosd(phi);
mprintf("\nSending End pf= %.3f ",pfs)

Ps=sqrt(3)* vs * I * pfs /1000;
mprintf("\nSending End Power= %.1f ",Ps)


//(b)
Zc=sqrt(Z/Y);
g=sqrt(Z*Y);
A=cosh(g);
B=Zc* sinh(g);
C=sinh(g)/Zc;
D=A;

Vs=(A*Vr)+(B*Ir);
V=abs(Vs)
vs=V*sqrt(3)*1e-3;
mprintf("\n\n\n(b)\nSending End Voltage= %.1f kV", vs)

Is=(C*Vr)+(D*Ir);
I=abs(Is)
mprintf("\nSending End Current= %.1f A", fix(I*10)/10)

phi1=atan(imag(Vs)/real(Vs))*(180/%pi);
phi2=atan(imag(Is)/real(Is))*(180/%pi);
phi=phi1-phi2;
pfs=cosd(phi);
mprintf("\nSending End pf= %.3f ",pfs)

Ps=sqrt(3)* vs * I * pfs /1000;
mprintf("\nSending End Power= %.1f ",Ps)
