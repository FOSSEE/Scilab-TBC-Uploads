clear;
clc;

rc=.5e-2;
rs=1.5e-2;
u=4

L=2e-7 * log(rs/rc);
mprintf("\nL= %.1f e-7H/m", L*1e7)
C=u*1e-9/(18 * log(rs/rc))
mprintf("\nC= %.3f e-9F/m", C*1e9)
v=1/sqrt(L*C);
mprintf("\nv= %.1f e8m/s", v*1e-8)
Zc=sqrt(L/C)
mprintf("\nZc= %.0f ohm", Zc)
