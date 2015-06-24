//Engineering and Chemical Thermodynamics
//Example 8.7
//Page no :385

clear ; clc;
//Given 
P = 0.223 ; //[bar]
P_a_sat = 0.156 ; // [bar]
P_b_sat = 0.124 ; //[bar]
R = 8.314 ;
T = 50 + 273 ;
Xa = 0.554 ;
Xb = 1 - Xa ;

gama_a = P / P_a_sat ;
A1 = R * T * log(gama_a) / (Xb^2) * 10^-3 ;
gama_b = P / P_b_sat ;
A2 = R * T * log(gama_b) / (Xa^2) * 10^-3 ;   

A = ceil((A1 + A2) / 2) ;
disp(" Example: 8.7   Page no : 385") ;
printf("\n    Value of two suffix Marguels parameter = %.1f kJ/mol",A);