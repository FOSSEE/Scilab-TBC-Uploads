//Engineering and Chemical Thermodynamics
//Example 9.10
//Page no :456

clear ; clc ;
//Given 
del_g0_f_1 = 31.72 ; //[kJ/mol]
del_g0_f_2 = 26.89 ; //[kJ/mol]
R = 8.314 ;
T = 298 ;//[K]
del_g0_rxn = del_g0_f_2 - del_g0_f_1 ;
K = exp( - del_g0_rxn * 10^3 / (R * T) ) ;
x = K / (1 + K) ;

disp(" Example: 9.10   Page no : 456") ;
printf("\n         x = %.3f \n\n     At equillibrium %.1f %% of the liquid exists as cyclohexane.",x ,x * 100) ;
