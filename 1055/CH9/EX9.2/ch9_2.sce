// To determine the minimum internal diameter of the lead sheath
clear
clc;
e1=4;
e2=4;
e3=2.5;
g1max=50;
g2max=40;
g3max=30;
r=.5;// radius (cm)
r1=r*e1*g1max/(e2*g2max);
r2=r1*e2*g2max/(e3*g3max);
V=66;
lnc=(V-((r*g1max*log(r1/r))+(r1*g2max*log(r2/r1))));
m=lnc/(r2*g3max);
R=r2*(%e^m);
D=2*R;
mprintf("minimum internal diameter of the lead sheath,D=%.2f cms\n",D);
