//Chemical Engineering Thermodynamics
//Chapter 14
//Thermodynamics of Chemical Reactions

//Example 14.11
clear;
clc;

//Given
//Basis: 1 Kgmole of benzene
//C6H6 (A) + HNO3 (B) - C6H5NO2 (C) + H2O (D)
T = 298;//Temperature in K
R = 1.98;//gas constant in Kcal/Kgmole K
//Standard enthalpy in Kcal/Kgmole at 25 deg celsius of the above components are given as
H_A = 11718;
H_B = -41404;
H_C = -68371;
H_D = 3800;
//Standard entropy in Kcal/Kgmole K at 25 deg celsius of the above components are given as
S_A = 41.30;
S_B = 37.19;
S_C = 16.72;
S_D = 53.60;

//To Calculate the conversion of benzene at 25 degree celsius and 1 atm
del_F = (H_C+H_D-(T*(S_C+S_D)))-(H_A+H_B-(T*(S_A+S_B)));
Ka = %e^(-del_F/(R*T));//Equilibrium constant
x = (Ka^(1/2)/(1+(Ka^(1/2))));
mprintf('The conversion is almost %f percent for this reaction.',x*100);
//end