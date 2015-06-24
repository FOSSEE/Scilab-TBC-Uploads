//Engineering and Chemical Thermodynamics
//Example 3.6
//Page no:125

clear ; clc ;
//Given 
m_dot_1 = 10 ; // [kg/s]
m_dot_2 = 1.95 ; // [kg/s]
P_1 = 200 * 10^5 ; //[N/m^2]
T_1 = 500 ; //[*C]
P_2 = 100 * 10^5 ; // [N/m^2]
T_2 = 20 ; //[*C]
P_3 = 100 * 10^5 ; //[N/m^2]
S_cap_1 = 6.14 * 10^3 ; //[J/kgK] , From table
S_cap_2 = 0.2945 * 10^3 ; //[J/kgK] , From table
S_cap_3 = 5.614 * 10^3 ; //[J/kgK] , From table

m_dot = m_dot_1 + m_dot_2 ;
dS_dt_univ = (m_dot * S_cap_3 -(m_dot_1 * S_cap_1 + m_dot_2 * S_cap_2)) * 10^-3;
disp(" Example: 3.6   Page no : 125") ;
printf('\n     Entropy generated = %.2f kW/K ',dS_dt_univ);