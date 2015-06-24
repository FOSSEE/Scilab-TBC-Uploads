clear;
clc;

V=33e3;
V=V/sqrt(3);
f=50;
l=3.4e3;
d=2.5
r=d/2;
t=.6;
R=r+t;
e=3.1;

//disp(R);

c=2* %pi * 8.85 * e/ log(R/r);
C=c*l;
C=C*1e-6;
mprintf("\n(a)C= %.3f e-6 F/phase", C);

I=V * 2 * %pi * f * C*1e-6 ;
mprintf("\n(b)Charging Current I= %.2f A/phase", I);

KVAR=3*V*I *1e-3;
mprintf("\n(c)Charging KVAR= %.1f ", KVAR);

pf=.03;
phi=acos(pf);
lossang=(%pi/2)-phi;
Loss=2*%pi*f*C*1e-6*V*V*sin(lossang);
mprintf("\n(d)Dielectric Loss per phase= %.1f W", Loss);

Emax=V*1e-3/(r*log(R/r));
mprintf("\n(e)Emax= %.2f KV/cm (rms)",Emax)
