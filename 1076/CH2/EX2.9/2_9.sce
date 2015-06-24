clear;
clc;

l=10;
D=1.25;
dia=1.213e-2;

Cab=.01206/log10(D/(dia/2))
C=l*Cab;
Cn=2*C;

mprintf("Capacitance between 2 conductors= %.4f e-6F/km\n", C);
mprintf("Capacitance between conductor and neutral= %.4f e-6F/km\n", Cn);
