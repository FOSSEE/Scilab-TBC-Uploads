// Scilab code Exa2.15 : : Page 94 (2011)
clc; clear;
Y = 110e-03;// Yield of Na-24, mCi/hr
T = 14.8;// Half life of Na-24, hours
t = 8;// Time after which activity to be compute, hours
lambda = 0.693/T;// Disintegration constant, hours^-1
A = 1.44*Y*T;// Maximum activity of Na-24, Ci
A_C = A*[1-%e^(-lambda*t)];// Activity after a continuous bombardment, Ci
Activity = A_C*(%e^(-lambda*t));// Activity after 8hours, Ci
printf("\nThe maximum activity of Na-24 = %5.3f Ci\nThe activity after a continuous bombardment = %6.4f Ci\nThe activity after 8hours = %7.5f Ci",A, A_C, Activity);

// Result
// The maximum activity of Na-24 = 2.344 Ci
// The activity after a continuous bombardment = 0.7324 Ci
// The activity after 8hours = 0.50360 Ci 