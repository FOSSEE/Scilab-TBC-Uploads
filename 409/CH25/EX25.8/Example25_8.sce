clear ;
clc;
// Example 25.8
printf('Example 25.8\n\n');
//page no. 782
// Solution 

// Given 
P1 = 1 ;// Initial pressure - [atm]
P2 = 1 ;// Final pressure - [atm]
T1 = 500 ;// Initial temperature -[degree C]
T2 = 500 ;// Final temperature -[degree C]

// The main reaction is CO2(g) + 4H2(g) + --> 2H2O(g) + CH4(g)                              (A)
// Data obtained from above reaction 
m_CO2 = 1 ;// Moles of CO2 - [ g mol]
m_H2 = 4 ;// Moles of H2 - [ g mol]
m_H2O = 2 ;// Moles of H2O - [ g mol]
m_CH4 = 1 ;// Moles of CH4 - [ g mol]

// Additional required data are obtained from CD, according to book it is a follows-
H_fCO2 = -393.250; // Heat of formation of CO2 - [kJ/g mol] 
H_fH2 = 0 ;// Heat of formation of H2 - [kJ/g mol] 
H_fH2O = -241.835 ;// Heat of formation of H2O - [kJ/g mol] 
H_fCH4 = -74.848 ;// Heat of formation of CH4 - [kJ/g mol] 

H_CO2 = 21.425 ;// Change in enthalpy during temperature change from 25 to 500 degree C  of CO2 - [kJ/g mol] 
H_H2 = 13.834 ;// Change in enthalpy during temperature change from 25 to 500 degree C of H2 - [kJ/g mol] 
H_H2O = 17.010 ;// Change in enthalpy during temperature change from 25 to 500 degree C of H2O - [kJ/g mol] 
H_CH4 = 23.126 ;// Change in enthalpy during temperature change from 25 to 500 degree C of CH4 - [kJ/g mol] 

H_in  = (H_fCO2 + H_CO2)*m_CO2 + (H_fH2 + H_H2)*m_H2 ;// Enthalpy change for inputs -[kJ]
H_out = (H_fH2O + H_H2O)*m_H2O + (H_fCH4 + H_CH4)*m_CH4 ; // Enthalpy change for outputs -[kJ]
del_H = H_out - H_in ;// Net enthalpy change of process -[kJ]

printf('Heat of above reaction at 500 degree C and 1 atm is %.1f kJ.',del_H) ;