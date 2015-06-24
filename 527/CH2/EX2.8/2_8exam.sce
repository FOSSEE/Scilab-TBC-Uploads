//Engineering and Chemical Thermodynamics
//Example 2.8
//Page no :64

clear ; clc
// Given data
n_dot_air = 10 ; //[mol/min]
C_bar_P_900 = 30.71 ; //[J/molK]
C_bar_P_600 = 29.97 ; //[J/molK]
T1 = 600 ; //[K]
T2 = 900 ; //[K]
T_ref = 298 ; //[K]

// Q_dot = n_dot_air * (h_900 - h_600)...........Eqn E2.8A
Q_dot = n_dot_air * (C_bar_P_900 * (T2 - T_ref) - C_bar_P_600 * (T1 - T_ref)); 
disp(" Example: 2.8   Page no : 33") ;
printf('\n        Heat rate required = %g J/min',Q_dot);