clear;
clc;

A= 1.5e-4;
Deff=39.8e-3;
D= 8;
rho1=1.73e-6 / 100;
l=1e3;
f=50;
V=132e3;

//(a)
R= rho1 * l / A;
r=.5 * Deff;
L= .4605 * log10 (D/(.7788 *r));
mprintf("L = %.2f mH/km\n",L);

C= .02412/(log10 (D/r));
mprintf("C = %.5f e-6 F/km\n",C);

//(b)
Ic = 2 * %pi * f * C *1e-6 * V / sqrt(3);
mprintf("Charging current = %.4f A/km/phase\n",Ic);
MVA=sqrt(3)*V *Ic *1e-6;
mprintf("Charging MVA = %.4f MVA/km\n",MVA);
