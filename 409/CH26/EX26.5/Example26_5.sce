clear ;
clc;
// Example 26.5
printf('Example 26.5\n\n');
//page no. 819
// Solution 

// Given 
CA = 10000 ;// Produced citric acid - [kg]
f_glucose = .30 ;// Fraction of glucose in solution 
con_glucose = .60 ;//  Fraction of glucose consumed
w_glucose = 180.16 ;// Mol. wt. of d,alpha glucose -[g]
H_glucose = -1266 ;// Specific enthalpy change of glucose - [kJ/g mol]
w_CA = 192.12; // Mol. wt. of citric acid -[g]
H_CA = -1544.8  ;// Specific enthalpy change of citric acid - [kJ/g mol]
w_BM = 28.6 ;// Mol. wt. of biomass -[g]
H_BM = -91.4  ;//  Specific enthalpy change of biomass - [kJ/g mol]
H_CO2 = -393.51  ;//  Specific enthalpy change of CO2 - [kJ/g mol]

// Main reaction is :
// 3 * glucose + 7.8*O2 ---> 5.35*BM + 2.22*CA + 4.50*CO2 ..reaction (a)

// Material Balance
mol_CA = CA/w_CA ;// Mole of citric acid produced - [kg mol]
g_soln = (mol_CA*(3/2.22)*w_glucose*1)/(con_glucose*f_glucose) ;//Mass of 30 % glucose solution introduced -[kg]
i_glucose = g_soln* f_glucose / w_glucose ;// Initial moles of glucose - [kg mol]
f_glucose = (1 - con_glucose)*i_glucose ;// Final moles of glucose - [kg mol]
f_CA = mol_CA ;// Final moles of citric acid - [kg mol]
f_BM = f_CA*(5.35/2.22) ;// Using the reaction (a)- Final moles of biomass - [kg mol]
i_O2 = i_glucose*(7.8/3) ;//  Using the reaction (a)- Initial moles of O2 - [kg mol]
f_CO2 =  i_glucose*(4.5/3)*con_glucose ;//  Using the reaction (a) - Final moles of CO2 - [kg mol]

// Energy balance
// For closed system - del_U = Q + W 
power = 100 ;// Power of aerator -[hp]
time = 220 ;// Time taken for reaction - [ hr ]
W = (power*745.7*time*3600)/1000 ;// Work done by aerator - [kJ]

// Assume del_U = del_H , pv work is equal to zero ,hence
// Q = del_H - W

Hi_glucose  = i_glucose*H_glucose*1000 ;// Enthalpy change of glucose input - [kJ]
Hi_O2  = i_O2*0*1000 ;// Enthalpy change of O2 input - [kJ]
H_in = Hi_glucose + Hi_O2 ;// Enthalpy change of input - [kJ]

Hf_glucose  = f_glucose*H_glucose*1000 ;// Enthalpy change of glucose output - [kJ]
Hf_BM = f_BM * H_BM*1000 ;//Enthalpy change of biomass output - [kJ]
Hf_CA = f_CA *H_CA*1000 ;//Enthalpy change of citric acid output - [kJ]
Hf_CO2 = f_CO2 *H_CO2*1000 ;//Enthalpy change of CO2 output - [kJ]
H_out = Hf_glucose + Hf_BM +Hf_CA + Hf_CO2 ;// Enthalpy change of output - [kJ]
del_H = H_out - H_in ;// Total enthalpy change in process - [kJ]
Q = del_H - W ;// Heat removed - [kJ]

printf('Heat exchange from the fermentor during production of 10,000 kg citric acid is %.2e kJ(minus sign indicates heat is removed).\n',Q) ;