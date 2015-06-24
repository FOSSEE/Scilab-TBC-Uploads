// Scilab code Ex2.10: Pg 53 (2008)
clc; clear;
E1 = 6;                     // E.m.f of battery, V
E2 = 4.5;                  // E.m.f of battery, V
R1 = 1.5;                 // Resistance, ohm
R2 = 2;                  // Resistance, ohm
R3 = 5;                 // Resistance, ohm
// Part (a)
// Using matrix method for solving set of equations
A = [6.5 5; 5 7];
B = [6; 4.5];
X = inv(A)*B;
I1 = X(1,:);             // Electric current through branch FA, A
I2 = X(2,:);             // Electric current through branch DC, A
I3 = ( I1 + I2);         // Electric current through branch BE, A
// Part (b)
V_BE = I3*R3;            // P.d across resistor R3, V
printf("\nElectric current through branch FA = %5.3f A", I1);
printf("\nElectric current through branch DC = %6.4f A", I2);
printf("\nElectric current through branch BE = %5.3f A", I3);
printf("\np.d across resistor %1d ohms = %5.3f V", R3, V_BE);

// Result
// Electric current through branch FA = 0.951 A
// Electric current through branch DC = -0.0366 A
// Electric current through branch FA = 0.915 A
// p.d across resistor %1d ohms = 4.573 V 
