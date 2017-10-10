// Calculating the loss that will be conducted across the the laminations
clc;
disp('Example 4.2, Page No. = 4.3')
// Given Data
Q_con_5 = 25;// Heat Dissipated
t_5 = 20;// Thickness of laminations in mm
S_5 = 2500;// Cross-section area of conduction in mm square
T_5 = 5;// Temperature difference in degree celsius
t_20 = 40;// Thickness of laminations in mm
S_20 = 6000;// Cross-section area of conduction in mm square
T_20 = 20;// Temperature difference in degree celsius
// Calculation of heat conducted across the laminations
p_along = (T_5*S_5*10^(-6))/(Q_con_5*t_5*10^(-3));// Thermal resistivity along the direction of laminations
p_across = 20*p_along;// Thermal resistivity across the direction of laminations
Q_con_20 = S_20*10^(-6)*T_20/(p_across*t_20*10^(-3));// Heat conducted across the the laminations
disp(Q_con_20,'Heat conducted across the the laminations(W)=');
//in book answer is 6 W.  The answers vary due to round off error
