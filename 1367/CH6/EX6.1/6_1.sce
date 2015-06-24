//Find No. of Frenkel defect
//Ex:6.1
clc;
clear;
close;
na=6.023*10^23;//Avagadro's no.
p=3170;//density in kg/m^3
mw=7.9*10^-2;//molecular weight of CaF2
nl=na*p/mw;//calcium ions/cubic m
ni=2*nl;// /cubic m
t=1300;//in K
ef=2.7*1.6*10^-19;//energy of formation of one frenkel defect
k=1.38*10^-23;//boltzmann constant
nf=sqrt(nl*ni)*exp(-ef/(2*k*t));//in /cubic m
disp(nf,"No. of Frenkel defect per unit volume of Calcium Fluoride (in /m^3) = ");