// Scilab code Ex2.6: Pg 43 (2008)
clc; clear;
E = 64;                    // E.m.f of battery, V
R1 = 6;                   // Resistance, ohm
R2 = 4;                   // Resistance, ohm
// Part (a)
// Since R1 & R2 are  parallel to one another hence, their equivalent resistance is equal to the sum of reciprocal of their individual resistances
R_BC = ( R1*R2)/( R1 + R2 );           // Equivalent resistance across branch BC, ohm
R_AB = 5.6;                           // Resistance across branch AB, ohm
// Since R_AB & R_BC are in series, therefore, their equivalent resistance is equal to the sum of their individual resistances
R_AC = R_AB + R_BC;                     // Total circuit resistance, ohm
// From Ohm's law, V = I*R, solving for I
I = E/R_AC;                               // Total circuit current, A
// Part (b)
V_BC = I*R_BC;                           // Potential difference across branch BC, V
I1 = V_BC/R1;                             // Electric current through resistor R1, A
// Part (c)
// Since P = I^2*R
P_AB = I^2*R_AB;                          // Power dissipated by 5.6 ohm resistance, W
printf("\nThe current drawn fron the supply = %1d A ", I);
printf("\nThe current through %1d ohm resistor = %3.1f A", R1, I1);
printf("\nThe power dissipated by %3.1f ohm resistor = %5.1f W", R_AB, P_AB);

// Result
// The current drawn fron the supply = 8 A
// The current through 6 ohm resistor = 3.2 A 
// The power dissipated by 5.6 ohm resistor = 358.4 W
