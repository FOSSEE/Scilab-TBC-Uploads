clear ;
clc;
// Example 24.7
printf('Example 24.7\n\n');
//page no. 738
// Solution Fig. E24.7

// Pick the system as shown in above figure of book
// Given
T_stm = 250 + 273 ;// Temperature of entering steam - [K ]
Q_loss = -1.5 ;// Rate of heat loss from system - [kJ/s ]
T_mi = 20 + 273 ;//Temperature of entering material -[K ]
T_mf = 100 + 273 ;// Temperature of material after heating - [K]
m_m = 150 ;// Mass of charged material - [kg]
Cp_m = 3.26 ;// Average heat capacity of material - [ J/(g*K)]

// Use following conditions to simplify the energy balance
// 1. Proces is not in steady state , so change in energy not equals  0.
// 2. Assume del_KE and del_PE = 0.
// 3. Assume del_KE and del_PE = 0, for entering and exiting material .
// 4. W = 0.
// 5. Assume m1 = m2 = m_stm
// The energy balance reduce to    del_E = del_U =  Q - del_(H*m) .... eqn. (b)

del_U = m_m*Cp_m*(T_mf - T_mi) ;// Change in enthalpy of system , because del_(pV) = 0 for liquid and solid charge -[kJ]
Q_loss_total = Q_loss * 3600; // Total heat loss by system n 1 hour - [kJ]
// We need the value of specific change in enthalpy value of saturated steam(del_H_steam), according to book we can obtain this value from steam table, it's value is -1701 kJ/kg
del_H_steam = -1701 ;// Specific change in enthalpy value of saturated steam -[kJ/kg]
// Get mass of steam per kg charge from reduced energy balance(eqn. (b))
m_stm_total = (del_U - Q_loss_total)/(-del_H_steam) ;// Total mass of stea used - [kg]
m_stm = m_stm_total/m_m ;// Mass of steam used per kg of charge - [kg]

 printf(' Mass of steam used per kg of charge is %.3f kg .\n',m_stm);