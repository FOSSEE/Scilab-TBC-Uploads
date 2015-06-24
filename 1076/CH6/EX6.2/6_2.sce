clear;
clc;

dia=22.26e-3;
r=dia/2;
V=220;
d=6;
temp=25;
P=73;
m0=.84;
f=50;
l=250;

V=round(V/sqrt(3));
del=round((3.86*P/(273+temp))*10000)/10000;
Vd=round((3e6/sqrt(2))*r*del*m0* log(d/r) *1e-3);

//(a)Good Weather
Pc=243.5 * ((f+25)/del) * sqrt(r/d)* (V-Vd)^2 * 1e-5;
PC= Pc * l;
Ptot= 3 *PC;
mprintf("\ntotal loss in good weather = %.2f kW", Ptot);

//(b)Bad Weather
Vd1=.8*Vd;
Pc1=243.5 * ((f+25)/del) * sqrt(r/d)* (V-Vd1)^2 * 1e-5;
PC1= Pc1 * l;
Ptot1= 3 *PC1;
mprintf("\ntotal loss in bad weather = %.0f kW", Ptot1);
