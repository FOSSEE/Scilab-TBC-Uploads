//quantitative aspects of electrolysis

clear;
clc;

printf("\t Example 19.9\n");

t=7.44*3600;//time, sec
A=1.26;//current in ampere
q=A*t;//charge passed, coulomb
F=96500;//faraday constant, J/V mol
ne=q/F;//moles of electrons
nO2=ne/4;//moles of oxygen
nH2=ne/2;//moles of H2

R=0.0821;//gas constant, L atm/K
T=273;//temperature in Kelvin
P=1;//pressure in atm
VO2=nO2*R*T/P;//volume of oxygen gas generated
VH2=nH2*R*T/P;//volume of H2 gas generated

printf("\t the volume of O2 gas and H2 gas generated are : %4.2f L and %4.2f L respectively\n",VO2,VH2);

//End
