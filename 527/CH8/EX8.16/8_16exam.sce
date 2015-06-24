//Engineering and Chemical Thermodynamics
//Example 8.16
//Page no :403

clear  ; clc;
//Given
A = 6349 ; //[J/mol]
B = -384 ; //[J/mol]
R = 8.314 ;
T = 20 + 273 ; //[K]

k = 0.000001 ;
disp(" Example: 8.16   Page no : 403") ;
function y816 = f816(x_a) , y816 = R * T * (1/x_a + 1/(1 - x_a)) - 2 * A +6 * B * (1 - 2 * x_a) + k
endfunction
ans1 = fsolve([0.1],f816) ;
ans2 = fsolve([0.5],f816) ;

printf("\n    %.3f < x_a < %.3f ",ans1,ans2)
