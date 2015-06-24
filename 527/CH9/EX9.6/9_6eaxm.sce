//Engineering and Chemical Thermodynamics
//Example 9.6
//Page no :451

clear ; clc ;
del_g0_f_C6H6 = -32.84 ; //[kJ/mol] , From Table E9.6
del_g0_f_C2H4 = 68.15 ; //[kJ/mol] , From Table E9.6
del_g0_f_H2 = 0 ;  //[kJ/mol] , From Table E9.6
del_h0_f_C6H6 = -84.68 ; //[kJ/mol] , From Table E9.6
del_h0_f_C2H4 = 52.26 ; //[kJ/mol] , From Table E9.6
del_h0_f_H2 = 0 ;  //[kJ/mol] , From Table E9.6
T1 = 298.2 ;//[K]
P = 1 ;//[bar]
R = 8.31 ;
T2 = 1273 ; // [K]
del_g0_f_rxn = del_g0_f_C2H4 + del_g0_f_H2 - del_g0_f_C6H6 ;
K_298 = exp ( - (del_g0_f_rxn * 10^3) / (R * T1)) ;

del_h0_f_rxn = (del_h0_f_C2H4 + del_h0_f_H2 - del_h0_f_C6H6) * 10^3 ;
K_1273 = K_298 * exp( - del_h0_f_rxn / R * (1/T2 - 1/T1)) ;

x = sqrt( K_1273 / ( K_1273 + P)) ;

disp(" Example: 9.6   Page no : 451") ;
printf("\n     n_C2H6 = %.2f mol\n\n     n_C2H4 = %.2f mol\n\n     n_H2 = %.2f mol",1-x ,x,x) ;