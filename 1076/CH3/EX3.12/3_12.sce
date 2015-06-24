clear;
clc;

d=500;
z=complex(.105, .3768);
y=complex(0, 2.822e-6);
Z=z*d;
Y=y*d;
YZ=Y*Z;

A=1+(YZ/2)+((YZ)^2/24);
B=Z * (1+(YZ/6)+((YZ)^2/120));
C=Y * (1+(YZ/6)+((YZ)^2/120));
D=A;

Vr=220e3/sqrt(3);
Pr=40e6;
pf=.9;
pfa=-1*acos(pf);
Ir=0;

Vs=(A*Vr)+(B*Ir);
V=abs(Vs);
vs=sqrt(3)*V*1e-3;
phi1=atan(imag(Vs)/real(Vs))*(180/%pi);
mprintf("\nSending End Voltage = %.2f kV",vs);

Is=(C*Vr)+(D*Ir);
I=abs(Is);
phi2=atan(imag(Is)/real(Is))*(180/%pi);
mprintf("\nSending End Current = %.1f A",I);

phi2=phi2+180;
phi=phi1-phi2;
pfs=cosd(phi);
mprintf("\nSending End Power factor = %.4f  ",pfs);
