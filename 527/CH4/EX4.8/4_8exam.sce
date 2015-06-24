//Engineering and Chemical Thermodynamics
//Example 4.8
//Page no :197 

clear ; clc ;
//Given
B = 0.0486 * 10^-3 ;
T1 = 20 + 273 ; //[K]
T2 = 500 + 273 ; //[K]
v1 = 7.11 ; // [cm^3/mol]

v2 = v1 * exp( B * (T2 - T1)) ;
disp(" Example: 4.8   Page no : 197") ;
printf("\n     Molar volume of solid state 2 = %.2f cm^3/mol", v2);