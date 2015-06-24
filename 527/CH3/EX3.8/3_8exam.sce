//Engineering and Chemical Thermodynamics
//Example 3.8
//Page no :129

clear ; clc ;
//Given 
A = 3.355 ; // from table
B = 0.575 * 10^-3 ; // from table
D = -0.016 * 10^5 ; // from table
R = 8.314 ;
P1 = 1 ; //[bar]
P2 = 0.5 ; //[bar]
function y=f(T),y = R * (A * log(T) + B * T + D / (2 * T^2)) ; 
endfunction ;
S1 = f(373) - f(298) ;
S2 = R * log(P1 / P2) ; 
del_S = S1 - S2 ; 

disp(" Example: 3.8   Page no : 129") ;
printf('\n     Entropy change = %.2f J/(mol K )',del_S);