//Chemical Engineering Thermodynamics
//Chapter 13
//Thermodynamics in Phase Equilibria

//Example 13.1
clear;
clc;

//Given
//N2 obeys the relation : Z = 1+(2.11*10^-4*P)
Tc = 126;//Critical temperature in K
Pc = 33.5;//Critical pressure in atm
T = 373;//in K
P = 100;//in atm

//To Calculate the fugacity of N2 at 373K and 100 atm
//(i)Using the Z relation given above
//From equation 13.12 (page no 239)
phi = %e^(2.11*10^-4*(P-0));//fugacity coefficient
f = phi*P;
mprintf('(i)The fugacity of N2 using the given Z relation is %f atm',f);

//(ii)Using the fugacity chart given in figure A.2.9
Pr = P/Pc;//Reduced pressure in atm
Tr = T/Tc;//Reduced temperature in K
//From figure A.2.9,
phi = 1.04
f = phi*P;
mprintf('\n (ii)The fugacity of N2 using the fugacity chart is %f atm',f);
//end