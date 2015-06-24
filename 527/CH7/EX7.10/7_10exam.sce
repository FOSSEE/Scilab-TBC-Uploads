//Engineering and Chemical Thermodynamics
//Example 7.10
//Page no :343

clear ; clc ;
//Given
gama_a_inf = 0.88 ;
gama_b_inf = 0.86 ;
R =  8.314 ;
T = 39.33 + 273 ;

A_1 = R * T * log(gama_a_inf) ;
A_2 = R * T * log(gama_b_inf) ;
A = (A_1 + A_2) / 2 ;
disp(" Example: 7.10   Page no : 343") ;
printf("\n     The average value of two-suffix Margules parameter A = %g J/mol",A);