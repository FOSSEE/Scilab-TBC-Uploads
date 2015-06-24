//Engineering and Chemical Thermodynamics
//Example 5.2
//Page no :222

clear ; clc ;
//Given 
T_c = 370 ; //[K]
P_c = 41.58 * 10^5 ;//[N/m^2]
R = 8.314 ;
V1 = 0.001 ;//[m^3]
V2 = 0.04 ; //[m^3]
q = 600 ; //[J]

a = 27/64 * (R ^2)*(T_c)^2 / P_c ;
//Using E5.2D , E5.2E in E5.2C 
del_U = -0.96 * (1 / V2 - 1 / V1) ; 
W = del_U - q ;

disp(" Example: 5.2   Page no : 222") ;
printf("\n     Work done for the expansion = %g J/mol",W) ;