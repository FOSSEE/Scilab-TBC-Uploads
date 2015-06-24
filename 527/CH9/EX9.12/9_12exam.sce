//Engineering and Chemical Thermodynamics
//Example 9.12
//Page no :458

clear ; clc ;
//Given 
del_g0_f_B = 124.3 ; //[kJ/mol] , From Appendix A.3
del_g0_f_Ac = 209.2 ; //[kJ/mol] , From Appendix A.3
R = 8.314 ;
T = 298 ; // [K]
A = 9.2806 ;
B = 2788.51 ;
C = -52.36 ;
 del_g0_rxn = del_g0_f_B - 3 * del_g0_f_Ac ;
K = exp( - del_g0_rxn * 10^3 / (R * T)) ;

//We assume no acetylene condenses and no Benzene is volatile .
P = 1 / K^(1/3) ;
X = A - B / (T + C) ;
P_b = exp(X) ;
disp(" Example: 9.12   Page no : 458") ;
disp("      At equilibrium , the cylinder is almost completely filled with Benzene .")
printf("\n       System pressure = %.3f bar ",P_b)