clear ;
clc;
// Example 26.3
printf('Example 26.3\n\n');
//page no. 811
// Solution Fig E26.3b

// Given 
v_CH4 = 1000 ;// Volume of CH4 taken - [ cubic feet]
CH4 = 1 ;// assumed for convenience- [ g mol] 
ex_air = .5 ;// Fraction of excess O2 required 
hp_CaCO3 = 0.130 ;// Heat capacity of CaCO3 -[kJ/g mol]
hp_CaO = 0.062 ;// Heat capacity of CaO -[kJ/g mol]
w_CaCO3 = 100.09 ;// Mol. wt. of CaCO3 -[g]
w_CaO = 56.08 ;// Mol. wt. ofCaO - [g]

// The main reaction are - 
// (a)  CaCO3(s,25 C) --> CaO(s,900 C) + CO2(g,500 C)
//  (b) CH4(g,25 C) + 2O2(g,25 C) --> CO2 (g,500 C) + 2H2O (g,500 C)

req_O2 = 2 ;// By eqn. (b), O2 required by CH4 - [g mol]
ex_O2 = ex_air*req_O2 ;// Excess O2 required - [ g mol]
O2 = req_O2 + ex_O2 ;// Total O2 entering - [ g mol]
N2 = O2 *(.79/.21) ;// Total N2 entering - [ g mol]

// By analysis DOF is zero.
 
// Carry out elemental balance to get the unknowns 
nG_N2 = N2 ;// N2 balance - [ g mol]
nG_H2O = 4*CH4/2 ;// H2O balance - [ g mol]
nG_O2 = ex_O2 ;// [g mol]
// L = P , from Ca balance ...eqn. (A)
// 1 + L = nG_CO2 , from C balance ...eqn. (B)
// 3L + 2*O2 = 2*nG_CO2 + 2*nG_O2 + nG_H2O + P , from O balance ... eqn. (C)

// For energy balance, get required data from software in the CD of book and sensible heat data from Appendix F
// given data of outputs is taken in array in order CO2(g), O2(g),N2(g),H2O(g)  and then CaO(s)
del_Hi_out = [ -393.250,0,0,-241.835,-635.6] ;// // Heat of formation  - [kJ/g mol] 
del_Hf_out = [21.425,15.043,14.241,17.010,54.25] ;//Change in enthalpy during temperature change -[kJ/g mol]
del_H_out =del_Hi_out + del_Hf_out ;// Change in enthalpy final - [kJ/g mol]

// given data of inputs is taken in array in order CH4(g), CaCO3(s),O2(g) and N2(g)
del_Hi_in = [ -49.963,-1206.9,0,0] ;// // Heat of formation  - [kJ/g mol] 
del_Hf_in = [0,0,0,0] ;//Change in enthalpy during temperature change -[kJ/g mol]
del_H_in = del_Hi_in + del_Hf_in ;// Change in enthalpy final - [kJ/g mol]
// Now do energy balance , assume Q = 0 ,
// del_H_out(1)*nG_CO2 + del_H_out(2)*nG_O2 +del_H_out(3)*nG_N2 + del_H_out(4)*nG_H2O + del_H_out(5)*P = del_H_in(1)*CH4 + del_H_in(2)*L ... eqn. (D)
// Solve eqn. (A), (B), (C), and (D) to get L ,P , nG_CO2 
a = [1 -1;(del_H_in(2)-del_H_out(5)) -del_H_out(1)] ;// Matrix of coefficients
b = [-1;(del_H_out(2)*nG_O2 + del_H_out(3)*nG_N2 +del_H_out(4)*nG_H2O-del_H_in(1)*CH4)] ;// Matrix of constants
x = a\b  ;// Matrix of solutions, L = x(1), nG_CO2 = x(2)
g_CaCO3 = x(1)*w_CaCO3 ;//CaCO3 processed for each g mol of CH4 - [g]
printf(' CaCO3 processed for each g mol of CH4 is %.0f g.\n',g_CaCO3) ;
m_CaCO3 = (v_CH4*g_CaCO3)/359.05 ;
printf(' Therefore, CaCO3 processed per 1000 ft^3 of CH4 is %.0f lb.\n',m_CaCO3) ;