clear;
clc;
// Example 26.4
printf('Example 26.4\n\n');
//page no. 815
// Solution Fig E26.4b

// Given 
SO2_in = 2200 ;// Amount of SO2 entering reactor 2-[lb mol/hr]
// Basis : 1 lb mol CO entering reactor 1,therefore
R1_CO_in = 1 ;//CO entering reactor 1-[lb mol]
air =  .80 ;// Fraction of air used in burning 

// System- reactor 2
// Given
R2_fSO2_in = 0.667 ;// Fraction of SO2 entering reactor 2
R2_fO2_in = 0.333 ;// Fraction of O2 entering reactor 2
R2_fSO3_out = 0.586 ;// Fraction of SO3 exiting reactor 2
R2_fSO2_out = 0.276 ;// Fraction of SO2 exiting reactor 2
R2_fO2_out = 0.138 ;// Fraction of O2 exiting reactor 2
// Main Reaction: CO , (1/2)*O2 ---> CO2 
R1_O2_in = (1/2)*air ;//  O2 entering reactor 1-[g mol]
R1_N2_in = R1_O2_in*(79/21) ;//  N2 entering reactor 1-[g mol]

//Output of reactor 1
R1_CO_out = R1_CO_in*(1 - air) ;// [g mol]
R1_CO2_out = 1*( air) ;// [g mol]
R1_N2_out = R1_N2_in ;//[g mol]

// By analysis DOF is zero.
// Get eqn. to solve by species balance
//Unknowns - P- exit stream of reactor 2 , F - entry stream of reactor 2 , ex - extent of reaction
// P*(R2_fSO2_out)  - F*0 = 1*ex ... eqn.(a)- By SO3 balance
// P*(R2_fSO2_out) - F*(R2_fSO2_in) = -1*ex ...eqn.(b) - By SO2 balance
// By O2 balance we will get eqn. equivalent to eqn. (b), so we need  one more eqn.

// Energy balance
// For energy balance, get required data from software in the CD of book and sensible heat data from Appendix F
// given data of outputs is taken in array in order CO(g),CO2(g), N2(g),SO2(g),SO3(g)  and then O2(g)
del_Hi_out = [ -109.054,-393.250,0,-296.855,-395.263,0] ; // Heat of formation  - [kJ/g mol] 
del_Hf_out = [35.332,35.178,22.540,20.845,34.302,16.313] ;//Change in enthalpy during temperature change -[kJ/g mol]
del_H_out =del_Hi_out + del_Hf_out ;//[-371.825,15.043,160.781,-449.650,-581.35]// Change in enthalpy final - [kJ/g mol]

// given data of inputs is taken in array in order CO(g),CO2(g), N2(g),SO2(g) and then O2(g)
del_Hi_in = [  -109.054,-393.250,0,-296.855,0] ;// // Heat of formation  - [kJ/g mol] 
del_Hf_in = [17.177,17.753,11.981,0,0] ;//Change in enthalpy during temperature change -[kJ/g mol]
del_H_in = del_Hi_in+ del_Hf_in ;// Change in enthalpy final - [kJ/g mol]
// Now do energy balance , assume Q = 0 ,
// del_H_out(4)*P*R2_fSO2_out + del_H_out(5)*P*R2_fSO3_out - del_H_in(4)*F*R2_fSO2_in + del_Hi_out(6)*P*R2_fO2_out = 0 ... eqn. (c)

// Solve eqn. (a), (b) and (c) to get F ,P , ex 
a = [(R2_fSO3_out) 0 -1;(R2_fSO2_out) -(R2_fSO2_in) 1;(del_H_out(4)*R2_fSO2_out + del_H_out(5)*R2_fSO3_out + del_Hi_out(6)*R2_fO2_out )  -(del_H_in(4)*R2_fSO2_in) 0] ;// Matrix of coefficients
b = [0;0;(del_H_in(1)*R1_CO_out+del_H_in(2)*R1_CO2_out+del_H_in(3)*R1_N2_out-(del_H_out(1)*R1_CO_out+del_H_out(2)*R1_CO2_out+ del_H_out(3)*R1_N2_out))] ;// Matrix of constants
x = a\b  ;// Matrix of solutions, P = x(1), F = x(2) ,ex = x(3)
F = x(2) ;//exit stream of reactor 2 - [lb mol]
R2_SO2_in = R2_fSO2_in*F ;// Moles of SO2 required per lb mol of CO - [lb mol]
CO = (R1_CO_in*SO2_in)/R2_SO2_in ;//Mole of CO burned in reactor 1 - [lb mol] 

printf('Mole of CO burned in reactor 1 is %.0f lb mol.\n',CO) ;