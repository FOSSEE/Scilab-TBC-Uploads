//Engineering and Chemical Thermodynamics
//Example 2.12
//Page no :73

clear ; clc ;
// From table we have
del_h0_f_CO2 = -393.51 ; // [kJ/mol]
del_h0_f_H2 = 0 ; // [kJ/mol]
del_h0_f_H2O = -241.82 ; // [kJ/mol]
del_h0_f_CH3OH = -200.66 ; // [kJ/mol]

del_h0 = del_h0_f_CO2 + 3 * del_h0_f_H2 - del_h0_f_H2O - del_h0_f_CH3OH ;
disp(" Example: 2.12   Page no : 73") ;
printf('\n       Enthalpy of reaction = %g kJ/mol',del_h0);