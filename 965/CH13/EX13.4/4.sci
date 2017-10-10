clc;
clear all;
disp("Diffusion coefficient determination")
T=273+27;//K
sigA=3.996 ;//Angstrom
eAK=190;//K
MA=44;

sigB=3.167;//Angstrom
eBK=97;//K
MB=29;

sigAB=(sigA+sigB)/2;// Angstrom
sigAB
eABK=(eAK*eBK)^0.5;
eABKT=eABK/T;
Kt=1/eABKT;

Kt=[2 2.1 2.2 2.3]
rho=[1.075 1.057 1.041 1.026]
// By interpolation
rho=1.057-(1.057-1.041)*(2.195-2.1)/(2.2-2.1)
p=1;//atm

DAB=0.001858*(T^1.5)*(1/MA+1/MB)^0.5/(p*rho*(sigAB)^2);
disp("cm^2/s",DAB,"Diffusion coefficient DAB  =")

