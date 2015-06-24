//Engineering and Chemical Thermodynamics
//Example 3.3
//Page no:121

clear  ; clc ;
// Given 
T_1_1 = 273 ;// {K}
T_1_2 = 373 ; //[K]
Cp = 24.5 ; // [J/molK]
del_S_sur = 0 ; //Since the system is isolated 
T2 = (T_1_1 + T_1_2)/2 ;
del_S = Cp / 2 * log(T2^2 / (T_1_1 * T_1_2)) ;

disp(" Example 3.3   Page no : 121") ;
printf("\n     Entropy change for the system = %.2f J/(mol K)", del_S);