//Engineering and Chemical Thermodynamics
//Example 9.2
//Page no :444

clear ; clc ;
//Given 
del_gf_0_CO2 = -394.36 ; //[kJ/mol],From Appendix A.3
del_gf_0_H2 = 0 ; //[kJ/mol],From Appendix A.3
del_gf_0_H2O = -228.57 ; //[kJ/mol],From Appendix A.3
del_gf_0_CH3OH = -161.96 ; //[kJ/mol],From Appendix A.3
n_CO2 = 1 ;
n_H2 = 3 ;
n_CH3OH = 1 ;
n_H2O = 1 ;
T = 298.15 ;//[K]
R = 8.314 ; //[J/molK]

del_g0_rxn = (n_CO2 * del_gf_0_CO2 + n_H2 * del_gf_0_H2 - n_H2O * del_gf_0_H2O - n_CH3OH * del_gf_0_CH3OH) * 10^3 ; // [J/mol]
K_298 = exp( - del_g0_rxn / (R * T)) ;
disp(" Example: 9.2   Page no : 444") ;
printf("\n     The equillibrium constant K298 = %.2f ",K_298) ;
