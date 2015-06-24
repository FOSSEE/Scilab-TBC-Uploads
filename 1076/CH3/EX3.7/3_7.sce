clear;
clc;

Vs=33e3/sqrt(3);
Vr=30e3/sqrt(3);
Pr=10e6;
pf=.8;
eff=.96;

I=Pr/(3*Vr*pf);

Ps=Pr/eff;
Pl=Ps-Pr;

R=Pl/(3*I*I);
pfa=acos(pf);
X=((Vs-Vr)-(I*R*pf))/(I*sin(pfa));

mprintf("R= %.1f ohm per phase, X= %.1f ohm per phase",R,X);
