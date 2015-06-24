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

Ys=-.6*Y;

As=1;
Ds=1;
Bs=0;
Cs=Ys;

Anew=A + (B*Cs);

Vr=round(220e3/sqrt(3));
Pr=40e6;
pf=.9;
pfa=-1*acos(pf);
Irm=Pr/(3*Vr);
Ir=complex(Irm *pf, Irm * sin(pfa));

Vs=(A*Vr)+(B*Ir);
Vr0=abs(Vs)/(round(abs(Anew)*100)/100);

VRc= (Vr0-Vr)*100/Vr
mprintf("\n(a) Voltage Regulation = %.2f percent",VRc);

Vr02=abs(Vs)/abs(A);

VRc2= (Vr02-Vr)*100/Vr
mprintf("\n(b) Voltage Regulation(uncompensated) = %.2f percent",VRc2);

