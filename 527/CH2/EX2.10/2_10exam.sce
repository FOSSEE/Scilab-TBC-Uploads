//Engineering and Chemical Thermodynamics
//Example 2.10
//Page no :68

clear ; clc
//Given data:
n_dot = 10 ; //[mol/s]
T1 = 298.2 ; //[K]
T2 = 342 ; //[K]
T3 = 373.2 ; //[K]
Cp_298_342 = 216.3 ; //[J/molK]
A = 3.025 ;
B = 53.722 * 10^-3 ;
C = -16.791 * 10^-6 ;
del_h_vap = 28.88 ; //[kJ/mol]

del_h_1 = Cp_298_342 * (T2 - T1) * 10^-3 ; //[kJ/mol]
del_h_2 = del_h_vap ;
function y=f(T),y=8.314*(A*T + (B/2)*(T^2) + (C/3)*(T^3))* 10^-3 ;
endfunction
del_h_3 = f(T3) - f(T2) ;

Q = n_dot * (del_h_1 + del_h_2 + del_h_3) ;
disp(" Example: 2.10   Page no : 68") ;
printf('\n       Rate of heat supplied = %d kJ/s',Q );