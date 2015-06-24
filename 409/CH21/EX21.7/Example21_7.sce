clear;
clc;
// Example 21.7
printf('Example 21.7\n\n');
//page no. 633
// Solution

//Given
//Constant pressure process 
mol_air = 10 ;// Moles of air-[kg mol]
T1 = 60+273 ;// Initial temperature of air-[K]
T2 = 30+273 ;// final temperature of air-[K]
// Additional data needed
Cp = 2.9*10^4  ;// Specific heat capacity of air at constant pressure-[J/(kg mol*C)]

// Use eqn. 21.11 for del_H
del_H = integrate('mol_air*Cp','T',T1,T2) ;//Change in enthalpy-[J]
printf('\nChange in enthalpy is %.1e J .\n ',del_H);