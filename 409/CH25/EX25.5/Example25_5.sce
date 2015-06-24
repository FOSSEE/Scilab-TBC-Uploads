clear ;
clc;
// Example 25.5
printf('Example 25.5\n\n');
//page no. 775
// Solution 

// Given 
// The main reaction is CO2(g) + 4H2(g) + --> 2H2O(g) + CH4(g)                              (A)
// Data obtained from above reaction 
m_CO2 = 1 ;// Moles of CO2 - [ g mol]
m_H2 = 4 ;// Moles of H2 - [ g mol]
m_H2O = 2 ;// Moles of H2O - [ g mol]
m_CH4 = 1 ;// Moles of CH4 - [ g mol]
P1 = 1 ;// Initial pressure  - [atm]
P2 = 1 ;// Final pressure - [atm] 

T1_CO2 = 800 ;// Initial temperature of entering CO2 -[K]
T1_H2 = 298 ;// Initial temperature of entering H2 -[K]
T2 = 1000 ;// Temperature of exiting product - [K]

// The main reaction is CO2(g) + 4H2(g) + --> 2H2O(g) + CH4(g)                              (A)
// Data obtained from above reaction 
m1_CO2 = 1 ;// Moles of entering CO2 - [ g mol]
m1_H2 = 4 ;// Moles of entering H2 - [ g mol]
f_con = 70/100 ;// Fractional conversion of CO2 
m2_H2O = 2*f_con ;// Moles of H2O in product - [ g mol]
m2_CH4 = 1*f_con ;// Moles of CH4 in product - [ g mol]
m2_CO2 = m1_CO2*(1-f_con) ;//  Moles of CO2 in product - [ g mol]
m2_H2 = m1_H2*(1-f_con) ;//  Moles of CO2 in product - [ g mol]

// Additional required data are obtained from CD, according to book it is a follows-
H_fCO2 = -393.250 ;// Heat of formation of CO2 - [kJ/g mol] 
H_fH2 = 0 ;// Heat of formation of H2 - [kJ/g mol] 
H_fH2O = -241.835 ;// Heat of formation of H2O - [kJ/g mol] 
H_fCH4 = -74.848 ;// Heat of formation of CH4 - [kJ/g mol] 


H1_CO2 = 22.798 ;// Change in enthalpy during temperature change from 298K to 800 K  of CO2 - [kJ/g mol] 
H1_H2 = 0 ;// Change in enthalpy during temperature change from 298K to 298 K  of H2 - [kJ/g mol] 
H2_H2O = 25.986 ;// Change in enthalpy during temperature change from 298K to 1000 K  of H2O - [kJ/g mol] 
H2_CH4 = 38.325 ;// Change in enthalpy during temperature change from 298K to 1000 K  of CH4 - [kJ/g mol] 
H2_CO2 = 33.396; // Change in enthalpy during temperature change from 298K to 1000 K  of CO2 - [kJ/g mol] 
H2_H2 = 20.620; // Change in enthalpy during temperature change from 298K to 1000 K  of H2 - [kJ/g mol] 

H_rxn_25 = (m_CH4*H_fCH4 + m_H2O*H_fH2O) - (m_CO2*H_fCO2 + m_H2*H_fH2) ;// Standard heat of reaction at 25 C-[kJ]
H_rxn_ac = f_con*H_rxn_25 ;// Heat of reaction actual - [kJ]
sum_H_rct = m1_CO2*H1_CO2 + m1_H2*H1_H2 ;// sum of heat of formation of reactant - [kJ]
sum_H_pdt = m2_CH4*H2_CH4 + m2_H2O*H2_H2O + m2_CO2*H2_CO2 + m2_H2*H2_H2 ;//sum of heat of formation of product - [kJ]
// Heat of above reaction is calculated by eqn. 25.4
H_rxn = sum_H_pdt - sum_H_rct + H_rxn_ac  ;// Heat of reaction -[kJ/ g mol CO2]

// By above conditions the energy balance reduces to Q = del_H , therefore 
Q = H_rxn ;// Heat transfer to/from the reactor - [kJ]
printf('Heat transfer to/from the reactor  is %.3f kJ.\nSince Q is negative , the reactor losses heat.',Q) ;