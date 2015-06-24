// Example 2.10
clc;
clear;
close;
// Given data
MR= 8314.2;// in J/kg-mole-K
mass= 44;// Molecular mass of carbon dioxide in kg
R= MR/mass;// in J/kg-K
P= 11;// in MPa
P=P*10^6;// in Pa
V= 50*10^-3;// in m^3
T= 18+273;// in K
// Formula P*V= m*R*T
m= P*V/(R*T);// in kg
m=round(m);// in kg
MolecularVolume= MR*T/P;// in m^3
D= m/V;// density of the gas in kg/m^3
SpecificVolume= 1/D;// in m^3/kg
disp(m,"The mass of the gas in kg is : ")
disp(MolecularVolume,"The Molecular volume in m^3 is : ")
disp(D,"The density of the gas in kg/m^3 is : ")
disp(SpecificVolume,"The specific volume of the gas in m^3/kg is : ")
