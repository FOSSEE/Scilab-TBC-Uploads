clear;
clc;

V=11e3;
V=V/sqrt(3);
f=50;
C1=.65;
C2=.75;

Cs=C2/3;
Cc=(C1/2)-(C2/6);
C=Cs+(3*Cc);
mprintf("\n(a)effective capacitance of each of the core to neutral = %.2f e-6 F",C);

I=V * 2 * %pi * f * C*1e-6 ;
mprintf("\n(b)Charging Current I= %.3f A/phase", I);

Cap=(1.5*Cc) + (.5 * Cs);
mprintf("\n(c)Capacitance between any 2 conductors = %.3f e-6 F",Cap);
