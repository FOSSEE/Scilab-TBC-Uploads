clear ;
clc;
// Example 15.1
printf('Example 15.1\n\n');
//Page No. 464
// Solution 

// Given
R = 82.06 ;// gas constant-[(cm^3 *atm)/(g mol *K)]
a = 9.24 *10^(6) ;//(atm) *(cm^3/g mol)^2
b = 90.7 ;// (cm^3)/(g mol)
m_C3H8 = 22.7 ;// Mass of propane-[kg]
mw_C3H8 =  44 ;// Mol. wt. of  1kmol propane-[kg]
V = 0.15 *10^(6) ;// Volume of cylinder -[cm^3]
pg = 4790 ;// Gauge pressure -[kPa]
P = (pg +101.3)/101.3 ;// Pressure absolute-[atm abs]
n = (m_C3H8/mw_C3H8) *10^3 ;// Moles of propane
// Get T using Van der Waal's eqn. 
T = ((P +((n^(2) *a/(V^(2))))) *(V-n *b))/(R *n) ;// Temperature of propane-[K]
printf('\nTemperature of propane is %.0f K.',T);