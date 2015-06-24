clear ;
clc;
// Example 24.9
printf('Example 24.9\n\n');
//page no. 742
// Solution Fig. E24.9a and Fig. E24.9b

// Given 

// For material balance
F = 20000 ;// Feed rate of saturated liquid - [kg/h]
F_Bz = 0.5 ;// Fraction of benzene in feed
F_Tol = 0.5 ;// Fraction of toluene in feed
D_Bz = 0.98 ;// Fraction of benzene in distillate
D_Tol = 0.02 ;// Fraction of toluene in distillate
B_Bz = 0.04 ;// Fraction of benzene in bottoms
B_Tol = 0.96 ;// Fraction of toluene in bottoms
R_by_D = 4.0 ;// Recycle ratio 
// Analysing the condition for material balance , degree of freedom  is 0.
// Solve equations obtained by material balances , simultaneously to get B and D
a = [1 1;B_Bz D_Bz] ;// Matrix formed by coefficients of unknown
b = [ F ; F_Bz*F ] ;// Matrix formed by contants
x = a\b ;// Matrix of solutions 
B = x(1) ;// Bottoms - [kg/h]
D = x(2) ;//Distillate - [kg/h]
R = D * R_by_D ;// Recycle - [kg/h]
V = R + D ;// Overhead vapour - [kg/h]

// For energy balance
// According to book additional data obtained from the fig.E24.9b are
H_F = 165 ;// Change in enthalpy of F - [kJ/kg]
H_B = 205 ;// Change in enthalpy of B - [kJ/kg]
H_D = 100 ;// Change in enthalpy of D - [kJ/kg]
H_R = 100 ;// Change in enthalpy of R - [kJ/kg]
H_V = 540 ;// Change in enthalpy of V - [kJ/kg]

Qc = R*H_R + D*H_D - V*H_V ;// The heat duty in the condenser - [kJ]
Qr = D*H_D + B*H_B - F*H_F - Qc;// The heat duty to the reboiler - [kJ]

printf('  Ditillate (D)                                %.2e kg/h.\n',D);
printf('  Bottoms (B)                                  %.2e kg/h.\n',B);
printf('  The heat duty in the condenser (Qc)         %.2e kJ/h.\n',Qc);
printf('  The heat duty to the reboiler (Qr)           %.2e kJ/h.\n',Qr);