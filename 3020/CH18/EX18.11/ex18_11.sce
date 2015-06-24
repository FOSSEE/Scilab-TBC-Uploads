clc;
clear all;
Eg=1.12;//bandgap in eV
mo=9.1e-31;//mass of electron
me=0.12*mo;//effective mass of electron
mh=0.28*mo;//effective mass of hole
k=1.38e-23;//boltzman constant
T=300;//temperature in K
Ef=(Eg/2)+(3*k*T/4)*log(mh/me);//fermi level at 300K
disp('eV',Ef,'fermi level at 300K is:')
