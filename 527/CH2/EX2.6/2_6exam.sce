//Engineering and Chemical Thermodynamics
//Example 2.6
//Page no :62

clear ; clc
//Q=n*Delta_h
//Given data
n =2 ; //[mol]
A = 3.470 ;
B = 1.450*10^-3 ;
D = 0.121*10^5 ;
T1 = 473 ; //[K]
T2 = 773 ; //[K]

function y = f(T),y = 8.314*(A + B*T + D*T^-2),endfunction
Delta_h = intg(T1,T2,f);

Q = n * Delta_h ;
disp(" Example: 2.6   Page no : 62") ;
printf('\n       (a)Heat required = %g J',Q);

//Solution (b)

//From steam table
h_cap_1 = 2827.9 ; //[kJ/kg]
h_cap_2 = 3478.4 ; //[kJ/kg]
m = 2*0.018 ; //[kg]

Delta_h_cap = (h_cap_2 - h_cap_1) * 10^3 ; //[J/kg]
Q = m * Delta_h_cap;
printf('\n\n       (b)Heat required = %g J',Q);