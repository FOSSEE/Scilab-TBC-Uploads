clear
clc;

dia=4.22e-3;
n=6;
T1=20;
T2=50;
rho1 = 2.826e-8;
a=.004;
dL=1.5e-2;
L=1000;

A=%pi * n *dia *dia / 4;
R1= rho1 * L * (1+dL) / A;
R2= R1 * (1+ (a * (T2-T1)));

mprintf("Temperature at %d = %.4f ohm/km\n", T1, R1);
mprintf("Temperature at %d = %.4f ohm/km", T2, R2);
