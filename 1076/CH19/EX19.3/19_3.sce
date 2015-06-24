clear;
clc;

xs=.22;
xl=.15;
Sb=1000;
Vr=1;

X=xl+xs;

Pr=1;

pf=.8;
pfa=acos(pf);
Qr=Pr*tan(pfa);

Vs=complex(Vr + (X * Qr / Vr) , (X * Pr / Vr));
V=abs(Vs);

mprintf("Vr = %.2f ang (%.1f) deg pu",V, fix(atand(imag(Vs)/real(Vs))*10)/10)
