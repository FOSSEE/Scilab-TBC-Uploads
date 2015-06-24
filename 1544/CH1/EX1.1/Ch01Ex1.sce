// Scilab code Ex1.1: Pg 3 (2008)
clc; clear;
I =.000018;    // Electric current, A
V = 15000;    // Electric potential, V
P = 250000000    // Electric Power, W
// Display standard form 
printf("\nStandard form:");
printf("\n==============");
printf("\n%f A = %3.1e A", I, I);
printf("\n%5.0f V = %3.1e V", V, V);
printf("\n%9.0f W = %3.1e W", P, P);
// Display scientific notation 
printf("\n\nScientific form:");
printf("\n================");
printf("\n%f A = %2d micro-ampere", I, I/1e-06);
printf("\n%5.0f V = %2d kilo-volt", V, V/1e+03);
printf("\n%9.0f W = %3d mega-watt", P, P/1e+06);

// Result 
// Standard form:
// ==============
// 0.000018 A = 1.8e-005 A
// 15000 V = 1.5e+004 V
// 250000000 W = 2.5e+008 W

// Scientific form:
// ================
// 0.000018 A = 18 micro-ampere
// 15000 V = 15 kilo-volt
// 250000000 W = 250 mega-watt
