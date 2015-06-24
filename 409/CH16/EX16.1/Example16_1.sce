clear ;
clc;
// Example 16.1
printf('Example 16.1\n\n');
//Page no. 486
// Solution Fig E16.1

// Given
Tc =  972 ;//[degree C]
T = 273+Tc ;//[K]
A = 8.799;
B = 1.615 * 10^4;
C = 0;
mw = 26.98;
// Use Antoine eqn. to get vapour pressure at 972 degree C
vP = exp(A-(B/(C+T))) ;// vapour pressure at 972 degree C-[mm Hg]
P = vP * 101.325/760 ;//[kPa]
// Use rate of vapourization(m) by given formula
m = 0.437 * (P * (mw^.5)/(T^0.5)) ;// Vapourization rate at 972 degree C-[g/(square centimetre * s)]
printf('\n Vapourization rate at 972 degree C is %.1e g/(square centimetre)(s).',m);