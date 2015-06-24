clear ;
clc;
// Example 25.4
printf('Example 25.4\n\n');
//page no. 773
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
H_fCO2 = -393.250 ;// Heat of formation of CO2 - [kJ/g mol] 
H_fH2 = 0 ;// Heat of formation of H2 - [kJ/g mol] 
H_fH2O = -241.835 ;// Heat of formation of H2O - [kJ/g mol] 
H_fCH4 = -74.848 ;// Heat of formation of CH4 - [kJ/g mol] 

H_CO2 = 21.425 ;// Change in enthalpy during temperature change from 25 to 500 degree C  of CO2 - [kJ/g mol] 
H_H2 = 13.834 ;// Change in enthalpy during temperature change from 25 to 500 degree C of H2 - [kJ/g mol] 
H_H2O = 17.010 ;// Change in enthalpy during temperature change from 25 to 500 degree C of H2O - [kJ/g mol] 
H_CH4 = 23.126 ;// Change in enthalpy during temperature change from 25 to 500 degree C of CH4 - [kJ/g mol] 

H_rxn_25 = (m_CH4*H_fCH4 + m_H2O*H_fH2O) - (m_CO2*H_fCO2 + m_H2*H_fH2) ;// Heat of reaction at 25 C
sum_H_rct = m_CO2*H_CO2 + m_H2*H_H2 ;// sum of heat of formation of reactant - [kJ]
sum_H_pdt = m_CH4*H_CH4 + m_H2O*H_H2O ;//sum of heat of formation of product - [kJ]
// Heat of above reaction is calculated by eqn. 25.4
H_rxn_500 = sum_H_pdt - sum_H_rct + H_rxn_25  ;// Heat of reaction at 500 C

printf('Heat of above reaction at 500 degree C and 1 atm is %.1f kJ.',H_rxn_500) ;