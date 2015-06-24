clear;
clc;

h=5.5;
Dia=1.213e-2;
d=1.25;
l=10;

r=Dia/2;
Cn=(2*.01206)/(log10 (d/(Dia* 0.5 * sqrt(1 + (d*d*.25/h^2)))));
C=Cn * l;

mprintf("Capacitance per conductor= %.5f e-6 F/conductor\n",C);
