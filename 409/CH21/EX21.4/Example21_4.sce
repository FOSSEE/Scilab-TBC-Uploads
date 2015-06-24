clear ;
clc;
// Example 21.4
printf('Example 21.4\n\n');
//page no. 629
// Solution

//Given
//Constant volume process 
mol_air = 10 ;// Moles of air-[kg mol]
T1 = 60+273 ;// Initial temperature of air-[K]
T2 = 30+273 ;// final temperature of air-[K]
// Additional data needed
Cv = 2.1*10^4 ; // Specific heat capacity of air at constant volume-[J/(kg mol*C)]

// Use eqn. 21.6 for del_U
del_U = integrate('mol_air*Cv','T',T1,T2) ;//Change in internal energy-[J]
printf('\nChange in internal energy is %.1e J .\n ',del_U);