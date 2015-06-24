clear ;
clc;
// Example 25.3
printf('Example 25.3\n\n');
//page no. 771
// Solution 

// Given 
// The main reaction is 4*NH3(g) + 5*O2(g) --> 4*NO(g) + 6*H2O                              (A)
H_fNH3 = -46.191 ;// Standard heat of formation of NH3 -[kJ/ g mol]
H_fO2 = 0 ;//Standard heat of formation of O2 -[kJ/ g mol]
H_fNO = 90.374 ;// Standard heat of formation of NO -[kJ/ g mol]
H_fH2O = -241.826 ;// Standard heat of formation of H2O -[kJ/ g mol]

// Heat of above reaction is calculated by eqn. 25.1 
H_rxn = ((4*H_fNO + 6*H_fH2O) - (4*H_fNH3 + 5*H_fO2))/4 ;// Heat of above reaction-[kJ/ g mol NH3]

printf('Heat of above reaction is %.3f kJ/g mol NH3.',H_rxn) ;