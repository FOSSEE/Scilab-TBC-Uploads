//Engineering and Chemical Thermodynamics
// Example 3.12
//Page no:136

clear ; clc ;
//Given 
n_dot = 250 ; // [mol/s]
P_1 = 125 * 10^5 ; // [N/m^2]
V_cap_1 = 5 * 10^-4 ; // [m^3/mol]
P_2 = 8 * 10^5 ; // [N/m^2]

X = 3 * P_1^0.6667 * V_cap_1 * ( P_2^(1/3) - P_1^(1/3)) ;
W_dot_s = n_dot * X * 10^-6 ;

disp(" Example: 3.12   Page no : 136") ;
printf('\n     Power generated = %.1f MW',W_dot_s) ;
