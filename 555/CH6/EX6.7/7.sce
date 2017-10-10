// Implementation of example 6.7
// Basic and Applied Thermodynamics by P.K.Nag

clc
clear

// T temperature,W work done,Q heat trnsfer..
// Radiation from panel is proportional to area and T2^4
// so if A is area then Q2=K*A*(T2)^4
// for minimum area we differentiate the expression A=W/[K*(T2^3)*(T1-T2)]..
// finally the expression for minimum area is Amin=256*W/[27*K*(T1^4)]

W=1 // kW
K= 5.67*10d-9 // W/(m^2)*(K^4)
T1=1000 // K
Amin= (256*W*1000)/[27*K*(T1*T1*T1*T1)];
printf("minimum area = %.4f m^2",Amin);
// end