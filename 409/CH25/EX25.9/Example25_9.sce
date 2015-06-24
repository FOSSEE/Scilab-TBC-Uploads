clear ;
clc;
// Example 25.9
printf('Example 25.9\n\n');
//page no. 783
// Solution 

// Given 
// The main reaction is CO(g,1 atm,298 K) + (1/2)O2(g,1 atm,400K)  --> CO2(g,1at,300 K)                              (A)
// Conditions of input and output gases are shown in above reaction 
m_CO = 1 ;// Moles of CO input- [g mol]
m1_O2 = 1.5 ;// Moles of O2 input - [g mol]
m_CO2 = 1 ;// Moles of CO2 output - [g mol]
m2_O2 = 1 ;// Moles of O2 output - [g mol]
T_in_CO = 298 ;// Temperature of entering CO -[K]
T_in_O2 = 400 ;//Temperature of entering O2 -[K]
T_out_CO2 = 300 ;// Temperature of exiting CO2 -[K]
T_out_O2 = 300 ;// Temperature of exiting O2 -[K]

// Additional data are obtained fro Appendix D and E , according to book it is as follows
H_fCO = -110.520 ;// Heat of formation of CO - [kJ/g mol] 
H_fO2 = 0 ;// Heat of formation of O2 - [kJ/g mol] 
H_fCO2 = -393.250 ;// Heat of formation of CO2 - [kJ/g mol] 

H_CO = 0 ;// Change in enthalpy during temperature change from 298K to 298 K of CO - [kJ/g mol] 
H1_O2 = 11.619 ;// Change in enthalpy during temperature change from 298K to 400 K of input O2 - [kJ/g mol] 
H_CO2 = 11.644 ;// Change in enthalpy during temperature change from 298K to 300 K of CO2 - [kJ/g mol] 
H2_O2 = 8.389 ;// Change in enthalpy during temperature change from 298K to 300 K of output  O2 - [kJ/g mol] 

H_in  = (H_fCO + H_CO)*m_CO + (H_fO2 + H1_O2)*m1_O2 ;// Enthalpy change for inputs -[kJ]
H_out  = (H_fCO2 + H_CO2)*m_CO2 + (H_fO2 + H2_O2)*m2_O2 ;// Enthalpy change for inputs -[kJ]
del_H = H_out - H_in ;// Net enthalpy change of process -[kJ]

printf('Heat of above reaction  is %.1f kJ.',del_H) ;