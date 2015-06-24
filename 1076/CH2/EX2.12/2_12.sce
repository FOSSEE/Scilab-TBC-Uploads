clear
clc;

D=350;
r=1.09;
f=50;
V=132e3;
d=100;

//(b)
Cn=.04824 / log10((sqrt(3)*D)/(2*r));
Cn=round(Cn*10000)/1e4
C=Cn/2;
mprintf("Capacitance per conductor per km = %.5f e-6 F/conductor/km\n",C);

//(c)
w=2 * %pi * f;
Vn=V/sqrt(3);
Ic= w * Cn * Vn * 1e-6;
Ic=round(Ic *1e3)/1e3
I=Ic * d;
MVA= sqrt(3)*V * I / 1e6;
mprintf("Charging MVA = %.2f MVA\n",MVA);
