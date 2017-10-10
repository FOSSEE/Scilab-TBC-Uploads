clc;
clear all;
disp("composition determination")
T=273+15;// K
G=8314;// kJ/(kgmole*K)
p=1.1*10^(5);// N/m^2
pO2=0.21*p;
pN2=0.79*p;

CO2=pO2/(G*T);// kg mole/m^3
disp("kg mole/m^3",CO2,"molar concentration of O2, CO2 =")
CN2=pN2/(G*T);// kg mole/m^3
disp("kg mole/m^3",CN2,"molar concentration of N2, CN2 =")

MO2=32;
MN2=28;

rhoO2=MO2*CO2;//kg/m^3
rhoN2=MN2*CN2;//kg/m^3
disp("kg/m^3",rhoO2,"molar density of O2 rhoO2 =")
disp("kg/m^3",rhoN2,"molar density of N2, rhoN2 =")

rho=rhoO2+rhoN2;
xO2=rhoO2/rho;
disp(xO2,"mass fraction of O2 xO2 =")
xN2=rhoN2/rho;
disp(xN2,"mass fraction of N2, xN2 =")

C=CO2+CN2
mO2=CO2/C;
disp(xO2,"mole fraction of O2, mO2 =")
mN2=CN2/C;
disp(xN2,"mole fraction of N2, mN2 =")

