//Engineering and Chemical Thermodynamics
//Example 9.11
//Page no :457

clear ; clc;
// Given
del_g0_f_CaCO3 = -951.25 ;
del_g0_f_CaO = -531.09 ;
del_g0_f_CO2 = -395.81 ;
R = 8.314 ;
T = 1000 ;// [K]
del_g0_rxn = del_g0_f_CaO + del_g0_f_CO2 - del_g0_f_CaCO3 ;
K = exp (-del_g0_rxn * 10^3 / (R * T)) ;
p_CO2 = K ;
disp(" Example: 9.11   Page no : 457") ;
printf("\n     Equilibrium pressure = %.3f bar ",p_CO2) ;