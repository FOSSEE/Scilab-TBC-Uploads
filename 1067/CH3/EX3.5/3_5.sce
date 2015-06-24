
clear;
close;
clc;
E=19.1*1e3;
L=10*1e-3;
C=.02*1e-6;
Em=sqrt(2)*E;
y=sqrt(L*C);
t=%pi*y*1e6;
emax=2*Em;
eavg=emax/t;
eavg=round(eavg/10)*10
printf("average restriking voltage=%dV/microsecs",eavg);
