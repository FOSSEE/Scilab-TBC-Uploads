//Ex 2.4
clc;clear;close;
format('v',5);
la=80;//mm
Aa=50;//mm^2(Cross sectional area)
lb=60;//mm
Ab=90;//mm^2(Cross sectional area)
lc=0.5;//mm(airgap)
Ac=150;//mm^2(Cross sectional area)
N=4000;//turns
Bc=0.30;//T(Flux density in airgap)
mu0=4*%pi*10^-7;//constant
mur=1300;//relative permeability
fi=Bc*Ac*10^-6;//Wb(flux)
Fa=fi*la*10^-3/(mu0*mur*Aa*10^-6);//At
Fb=fi*lb*10^-3/(mu0*mur*Ab*10^-6);//At
Fc=fi*lc*10^-3/(mu0*1*Ac*10^-6);//At
F=Fa+Fb+Fc;//At
I=F/N*1000;//mA
disp(I,"Coil current(mA)");
