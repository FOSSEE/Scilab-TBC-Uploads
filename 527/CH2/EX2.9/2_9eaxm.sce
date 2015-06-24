//Engineering and Chemical Thermodynamics
//Example 2.9
//Page no :65

clear ; clc
//solution(a)

// Given data:
P1 = 100000 ; // [N/m^2]
T1 = 298 ; //[K]
V1 = 0.1 * 0.1 ; // [m^3]
T2 = 373 ; // [N]
P_ext = 100000 ; //[N/m^2]
k = 50000 ; //[N/m]
A = 0.1 ; //[m^2]

// Applying ideal gas law we getan quadritic eqn of the form :
// a * V2^2 + b * V2 + c = 0 where
a = k / (T2 * A^2) ;
b = (P_ext / T2) - k * V1 / (A^2 * T2) ;
c = -P1 * V1 / T1 ;
V2 = (-b + sqrt ( b^2 - (4*a*c))) / (2 * a) ;
W = -P_ext * (V2 - V1) - ( k * (V2 - V1)^2)/(2 * A**2);//From eqn E2.9C
disp(" Example: 2.9   Page no : 65") ;
printf('\n      (a) Work required = %g J \n\n',W);


//Solution(b):

//Given data:
A = 3.355 ;
B = 0.575 * 10^-3 ;
D = -0.016 * 10^5 ;
P1 = 10^5 ; //[N/m^2]
V1 = 0.01 ; //[m^3]
R = 8.314 ;
T1 = 298 ;

n = (P1 * V1) / (R * T1) ;
function y=f(T),y=R*((A - 1) * T + B/2 * T^2 -D/T)
endfunction
del_u = f(373) - f(298) ;
del_U = n * del_u ;
Q = del_U - W;
printf('\n      (b).Heat transfered  = %.4f  J',Q);