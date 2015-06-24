//Engineering and Chemical Thermodynamics
//Example 3.5
//Page no:124

clear ; clc ;
//Given 
P_1 = 300 * 10^3 ; //[N/m^2]
T_1 = 700 ; // [*C]
V_bar_1 = 20 ; //[m/s]
P_2 = 200 * 10^3 ; // [N/m^2]
h_cap_1 = 3927.1 * 10^3 ; // [J/kg] , From table
S_cap_1 = 8.8319 ; // [kJ/kgK] , From table

S_cap_2 = S_cap_1 ; // Reverssible adiabatic process 
T2 = 623 ; // [*C] ,From table by interpolation
h_cap_2 = 3754.7 * 10^3 ; // [J/kgK] ,From table by interpolation
V_bar_2 = sqrt(2 * (h_cap_1 - h_cap_2) + V_bar_1^2) ; 
disp(" Example: 3.5   Page no : 124") ;
printf('\n   The final temperature is %g C and the exit velocity is %g m/s',T2,V_bar_2);
