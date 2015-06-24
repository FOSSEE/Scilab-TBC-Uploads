clear ;
clc;
// Example 27.2
printf('Example 27.2\n\n');
//page no. 840
// Solution E27.2

// Given 
m_N2 = 1 ;// Moles of N2 taken -[kg mol]
p = 1000;// Pressure of cylinder-[kPa]
T = 20 + 273 ;// Temperature of cylinder -[K]
a_pis = 6 ;// Area of piston - [square centimetre]
m_pis = 2 ;// Mass of pston - [kg]
R = 8.31 ;// Ideal gas constant - [(kPa*cubic metre)/(K * kgmol)]

V = (R*T)/p ;// Specific volue of gas at initial stage -[cubic metre/kg mol]
V1 = V * m_N2 ;// Initial volume of gas - [cubic metre]
V2 = 2*V1 ;// Final volume of gas according to given condition -[cubic metre]

// Assumed surrounding pressure constant = 1 atm
p_atm = 101.3 ;// Atmospheric pressure-[kPa]
del_Vsys = V2 -V1 ;// Change in volume of system -[cubic metre]
del_Vsurr = - del_Vsys ;// Change in volume of surrounding -[cubic metre]
W_surr = -p_atm*del_Vsurr ;// Work done by surrounding - [kJ]
W_sys = -W_surr ;// Work done by system - [kJ]

printf(' Work done by gas(actually gas + piston system) is %.0f kJ.\n',W_sys) ;