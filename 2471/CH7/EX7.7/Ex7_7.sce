clear ;
clc;
// Example 7.7
printf('Example 7.7\n\n');
printf('Page No. 212\n\n');

// given
C_S = 1/10^3;// Cost of steam production in p/Wh
P = 75*10^3;// Power required in W
T = 4*10^3;// Production time in h/year
C_T = 7*10^3;// Cost of turbine in Pound
R_T = 4*10^3;// Annual running cost of turbine in W
C_M = 1.5*10^3;// Cost of electric motor in Pound
R_M = 14*10^3;// Running cost of electric motor in Pound
C_M_A = 3.5/10^3;// Auunal running cost of electic motor in p/Wh
Save_R = R_M - R_T;// in Pound per year
printf('The saving in running costs would be %3.1e Pound per year',Save_R)
