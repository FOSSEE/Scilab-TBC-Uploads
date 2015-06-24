clear;
clc;

clear;
clc;


vr=220e3/sqrt(3);
Vb=vr
Vr=vr/Vb
Sr=40e6;
Sb=40e6;
Ib=Sb/(3*Vb)
Zb=Vb/Ib;

pf=.9;
pfa=-1*acos(pf);
Irm=(Sr/(3*vr))/Ib;
Ir=complex(Irm *pf, Irm * sin(pfa));


d=500;
z=complex(.105, .3768);
y=complex(0, 2.822e-6);
Z1=z*d;
Y1=y*d;
Z=Z1/Zb;
Y=Y1*Zb;
YZ=Y*Z;

A=1+(YZ/2)+((YZ)^2/24);
B=Z * (1+(YZ/6)+((YZ)^2/120));
C=Y * (1+(YZ/6)+((YZ)^2/120));
D=A;


Vs=(A*Vr)+(B*Ir);
V=abs(Vs);
vs=sqrt(3)*V*1e-3*Vb;
phi1=atan(imag(Vs)/real(Vs))*(180/%pi);
mprintf("\nSending End Voltage = %.2f kV",vs);

Is=(C*Vr)+(D*Ir);
I=abs(Is)*Ib;
phi2=atan(imag(Is)/real(Is))*(180/%pi);
mprintf("\nSending End Current = %.1f A",I);

phi=phi2-phi1;
pfs=cosd(phi);
mprintf("\nSending End Power factor = %.3f  ",pfs);

MVA=sqrt(3) * vs* I /1000;
mprintf("\nSending End Power = %.2f  ",MVA);


