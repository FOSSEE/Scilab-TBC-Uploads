//Exa 2.5
clc;
clear;
close;
//given data
DonorImpurity=1/10^6;;//impurity per atom
SiAtomCon=5*10^22;//in cm^-3
ni=1.45*10^10;//in cm^-3
MUe=1300;//in cm^2/V-s
e=1.6*10^-19;//constant
//part (i)
Nd=SiAtomCon*DonorImpurity;//in cm^-3
disp(Nd,"Donor atom concentration in cm^-3 : ");
//part (ii)
n=Nd;//in cm^-3
disp(n,"Mobile electron concentration in cm^-3: ");
//part (iii)
p=ni^2/Nd;//in cm^-3
disp(p,"Hole concentration in cm^-3 : ");
//part (iv)
SIGMA=n*e*MUe;//in (ohm-cm)^-1
disp(SIGMA,"Conductivity of doped silicon sample in (ohm-cm)^-1 : ");
//part (v)
rho=1/SIGMA;//in ohm-cm
l=0.5;//in cm
A=(50*10^-4)^2;//in cm^2
R=rho*l/A;//in ohm
disp(rho,"Resistivity in ohm-cm : ");
disp(R,"Resistance in ohm : ")