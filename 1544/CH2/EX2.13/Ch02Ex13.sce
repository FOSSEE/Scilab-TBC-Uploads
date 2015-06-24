// Scilab code Ex2.13:  Pg 62-63 (2008)
clc; clear;
R1 = 20;                    // Resistance, ohm
R2 = 10;                    // Resistance, ohm
R3 = 8;                    // Resistance, ohm
R4 = 5;                    // Resistance, ohm
R5 = 2;                    // Resistance, ohm
A = [20 -10 8; -5 2 15; 0 12 2];
B = [0; 0; 10];
X = inv(A)*B;
I3 = X(3,:);                // Electric current through BD, A
V_BD = I3*R3;              // P.d across branch BD, V
// For balance conditions i.e I3 = 0, R1/R2 = R4/R5, solving for R4
R_4 = ( R1*R5 )/R2;          // Resistance, ohm
printf("\nThe p.d between terminals B and D = %5.3f V", V_BD);
printf("\nThe value to which %1d ohm resistor must be adjusted in order to reduce the current through %1d ohm resistor to zero = %1d ohm", R4, R3, R_4);

// Result
// The p.d between terminals B and D = 0.195 V
// The value to which 5 ohm resistor must be adjusted in order to reduce the current through 8 ohm resistor to zero = 4 ohm
