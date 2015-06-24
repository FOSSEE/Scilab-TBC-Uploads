//Chemical Engineering Thermodynamics
//Chapter 14
//Thermodynamics of Chemical Reactions

//Example 14.5
clear;
clc;

//Given
T = 298;//Temperature in Kelvin
//Standard enthalpy in Kcal/Kgmole of the following components at 298 K are given as
H_SO2 = -70960;
H_SO3 = -94450;
H_O2 = 0;
//Standard entropy in Kcal/Kgmole K of the following components at 298 K are given as
S_SO2 = 2.48;
S_SO3 = -19.7
S_O2 = 0;
//Basis: 1 Kgmole of SO2
//SO2 +(1/2)O2 - SO3

//To Calculate the standard free energy for the reaction
n_SO2 = 1;//Kgmole of SO2 fed
n_O2 = (1/2)*2;//Kgmole of O2  fed as 100% excess O2 is given
n_SO3 = n_SO2;//Kgmole of SO3 formed
//From equation 14.38 (page no 312)
del_F = (H_SO3-(T*S_SO3))-(H_SO2-(T*S_SO2))-(H_O2-(T*S_O2));
mprintf('The standard free energy for the reaction at 25 degree celsius is %f Kcal/Kgmole',del_F);
//end