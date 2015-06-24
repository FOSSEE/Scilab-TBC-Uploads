//Engineering and Chemical Thermodynamics
//Example 3.9
//Page no:129

clear ; clc ;
//Given 
P = 1 ; //[bar]
p_O2 = 0.5 ; //[bar]
p_N2 = 0.5 ; // [bar]
n_O2 = 1 ; //[mol]
n_N2 = 1 ; //[mol]
R = 8.314 ; // J/mol K
del_S_1_O2 = -n_O2 * R * log(p_O2 / P) ;
del_S_1_N2 = -n_N2 * R * log(p_N2 / P) ; 
del_S_2 = 0 ; // As both O2 and N2 behave idealy
del_S = del_S_2 + del_S_1_O2 + del_S_1_N2 ;
disp(" Example: 3.9   Page no : 129") ;
printf("\n    Entropy of mixing = %.2f J/K",del_S);
 