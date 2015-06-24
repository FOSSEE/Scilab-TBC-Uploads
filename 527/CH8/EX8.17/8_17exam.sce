//Engineering and Chemical Thermodynamics
//Example 8.17
//Page no :406
clear  ; clc;
//Given

T = 300 ; //[K]
A = 6235 ; //[J/mol] 
P_a_sat = 100 * 10^3 ; //[Pa]
P_b_sat = 50 * 10^3 ; //{Pa}
R = 8.314 ;
w = 1/(R * T) ;
function Z817 = f817(R)
    x_a_a = R(1) ;
    x_a_b = R(2) ;
    Z817(1) = x_a_b * exp(A * (1 - x_a_b) ^ 2 * w) - x_a_a * exp(A * (1 - x_a_a) ^ 2 * w) ; // E8.17A
    Z817(2) = (1 - x_a_b) * exp(A * ( x_a_b) ^ 2 * w) - (1 - x_a_a) * exp(A * (x_a_a) ^ 2 * w ) ; // E8.17B
endfunction
x0 = [0.75 ; 0.1] ;
[z,fxs,m] = fsolve(x0,f817) ;
disp(" Example: 8.17  Page no : 406") ;
printf("\n        The compositions are : x_a_a = %.3f and x_a_b = %.3f",z(1,1), z(2,1)) ;

P = z(1,1) * exp(A * z(2,1) ^ 2 * w) * P_a_sat + z(2,1) * exp(A * z(1,1) ^ 2 * w) * P_b_sat ;
printf("\n        Total pressure = %d kPa",P * 10^-3) ;
y_a = z(1,1) * exp(A * z(2,1) ^ 2 * w) * P_a_sat / P ;
printf("\n            y_a = %.3f" , y_a ) ;