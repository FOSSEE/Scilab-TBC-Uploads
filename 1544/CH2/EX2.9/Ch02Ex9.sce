// Scilab code Ex2.9: Pg 52-53 (2008)
clc; clear;
R1 = 3;                // Resisance, ohms
R2 = 2;                // Resistance, ohms
R3 = 10;               // Resistance, ohms
E1 = 10;               // E.m.f, V
E2 = 4;                 // E.m.f, V
// Applying Kirchhoff â€™ s Current Law(the sum of the currents arriving at a junction is equal to the sum of the currents leaving that junction) 
A = [3 -2; 13 10];
B = [6; 10];
X = inv(A)*B;
I1 = X(1,:);                     // Electric current through branch FA, A
I2 = X(2,:);                     // Eleactric current through branch EB, A
I3 = ( I1 + I2 );                // Electric current through branch CD, A
V_CD = R3*I3;                    // P.d.across R3 resistor, V
printf("\nThe current through branch FA = %6.3f A", I1);
printf("\nThe current through branch EB = %5.3f A", I2);
printf("\nThe current through branch CD = %5.3f A", I3);
printf("\np.d.across %2d resistor = %4.2f V", R3, V_CD);

// Result
// The current through branch FA = 1.429 A
// The current through branch FA = -0.857 A
// The current through branch FA = 0.571 A
// p.d.across %2d resistor = 5.71 V
