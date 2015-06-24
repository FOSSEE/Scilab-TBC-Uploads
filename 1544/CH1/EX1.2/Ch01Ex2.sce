// Scilab code Ex1.2: Pg.4 (2008)
clc; clear;
I = 25e-05;    // Electric Current,A
P = 3e+04;    // Electric Power, W
W = 850000;    // Work done, J
V = 0.0016;    // Electric Potential, V
printf("\n\nScientific (Engineering) notation:");
printf("\n===================================");
printf("\n%2e A = %3d micro-ampere = %3.2f mA", I, I/1e-06, I/1e-03);
printf("\n%1.0e W = %3d micro-watt", P, P/1e-06);
printf("\n%6d J = %3d kJ = %3.2f MJ", W, W/1e+03, W/1e+06);
printf("\n%5.4f V = %3.1f milli-volt", V, V/1e-03);

// Result 
// Scientific (Engineering) notation:
// ===================================
//2.500000e-004 A = 250 micro-ampere = 0.25 mA
// 3e+004 W = -64771072 micro-watt
// 850000 J = 850 kJ = 0.85 MJ
// 0.0016 V = 1.6 milli-volt 
