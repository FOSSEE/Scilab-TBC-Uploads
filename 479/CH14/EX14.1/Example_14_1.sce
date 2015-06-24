//Chemical Engineering Thermodynamics
//Chapter 14
//Thermodynamics of Chemical Reactions

//Example 14.1
clear;
clc;

//Given
H_f_C2H4 = 12500;//Standard heat of formation of ethylene at 25 deg cel in Kcal/Kgmole
H_f_C2H4O = -11667;//Standard heat of formation of ethylene oxide at 25 deg cel in Kcal/Kgmole

//To Calculate the standard heats of reaction at 25 deg celsius
//The reaction is: C2H4 + (1/2)O2 - C2H4O
del_H_rxn = H_f_C2H4O-H_f_C2H4;//Since, Standard heat of formation of O2 is zero
mprintf('The standard heats of reaction at 25 deg celsius is %d Kcal/Kgmole',del_H_rxn);
//end