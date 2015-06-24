clear;
clc;
// Example 22.1
printf('Example 22.1\n\n');
//page no. 651
// Solution

//Assume that properties of water can be used to substitute properties of solution
// Given
V = 1.673 ;// Volume of closed vessel-[cubic metre]
m = 1 ;// mass of saturated liquid vaporized-[kg]
Pi = 1 ;// Initial pressure -[atm]
Ti = 10 ;// Initial temperature -[degree C]
Pf = 1 ;// final pressure -[atm]
Tf = 100 ;// final temperature -[degree C]

// Use steam table to obtain additional information at given condition
Ui = 35 ;// Initial enthalpy-[kJ/kg]
Uf = 2506.0 ;// Final enthalpy -[kJ/kg]

// Use eqn. 22.2 after modifiying it using given conditions(W = 0,del_KE = 0 and del_PE = 0 )
Q = m*(Uf - Ui) ;// Heat transferred to  the vessel - [kJ]

printf('\nHeat transferred to  the vessel is %.1f kJ .\n ',Q);