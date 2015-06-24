// Scilab code Ex2.11: Pg 57 (2008)
clc; clear;
R_AB = 6;                   // Resistance, ohm
R_BC = 4;                   // Resistance, ohm
R_DC = 1;                   // Resistance, ohm
R_AD = 3;                   // Resistance, ohm
R_BD = 5;                   // Resistance, ohm
// Using matrix method for solving the set of equations 
A = [6 -3 5; -4 1 10; 0 4 1];
B = [0; 0; 10];
X = inv(A)*B;
I1 = X(1,:);                       // Electric current, A
I2 = X(2,:);                      // Electric current, A
I3 = X(3,:);                     // Electric current, A
I_BC = I1 - I3;                 // Electric current, A
I_DC = I2 + I3;                // Electric current, A
I = I1 + I2;                  // Suplly current, A
printf("\nThe current through %1d ohm resistor = %5.3f A", R_AB, I1);
printf("\nThe current through %1d ohm resistor = %4.2f A", R_BC, I_BC);
printf("\nThe current through %1d ohm resistor = %5.3f A", R_DC, I_DC);
printf("\nThe current through %1d ohm resistor = %5.3f A", R_AD, I2);
printf("\nThe current through %1d ohm resistor = %5.3f A", R_BD, I3);
printf("\nThe supply current = %5.3f A", I)

// Result
// The current through 6 ohm resistor = 1.074 A
// The current through 4 ohm resistor = 0.89 A
// The current through 1 ohm resistor = 2.638 A
// The current through 3 ohm resistor = 2.454 A
// The current through 5 ohms resistor = 0.184 A
// The supply current = 3.529 A
