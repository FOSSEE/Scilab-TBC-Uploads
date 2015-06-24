//Engineering and Chemical Thermodynamics
//Example 7.1
//Page no :308

clear ; clc ;
//Given
h_cap_H2O = 2676.0 ; //[kJ/kg],From steam table
S_cap_H2O = 7.3548 ; //[kJ/kgK],From steam table
h_cap_0_H2O = 2687.5 ; //[kJ/kg],From Appendix B
S_cap_0_H2O = 8.4479 ; //[kJ/kgK],From Appendix B
P_0_H2O = 10 ;//[kPa]
T = 373.15 ;//[K]
R = 8.314 / 18 ;
P_sys = 101.35 ;//[kPa]

g_cap_H2O = h_cap_H2O - T * S_cap_H2O ;
g_cap_0_H2O = h_cap_0_H2O - T * S_cap_0_H2O ;  

f_H2O = P_0_H2O * exp((g_cap_H2O - g_cap_0_H2O ) / (R * T)) ;

Sai_H2O = f_H2O / P_sys ;

disp(" Example: 7.1   Page no : 308") ;

printf("\n         The fugacity = %.2f kPa \n\n        The fugacity coefficient = %.3f",f_H2O ,Sai_H2O);