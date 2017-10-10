// Example 3// Ch 3
clc;
clear;
close;
// given data
R=8314; // gas constant in J/kg.mol.K
T=300; // temperature 27 deg C, 27+293=300K
me=0.10; //mean free path in meters
rm=1.7*10^-10 //molecular radius in angstrom
M=28 //im mole^-1
m0=4.8*10^-26 //mass of nitrogen molecule
N = 1/[4*%pi*((rm)^2)*me]; // no. of molecules in gas
printf("no. of molecules %e",N)
p = [(N*m0)/M]*R*T; // max pressure in chamber in N/m2
printf("max pressure in chamber %f N/m2",p) 
// Note: Calculation in the book is wrong So answer in the book is wrong
