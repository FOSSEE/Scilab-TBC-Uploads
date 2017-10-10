// Example 6// Ch 3
clc;
clear;
close;
// given data
m = 1;//in kg
M=2.016;//molecular weight of helium
k = 8314// gas constant in J/kg.mol.K
p = 1.01*10^5;//1 atm=1.01*10^5 N/m2
T = 273;//in kelvin
G = m*k*T/(M*p);//volume of 1kg of helium in m^3
printf("volume of 1kg of helium is %f m^3",G)
