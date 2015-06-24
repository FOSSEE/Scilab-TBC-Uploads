// Scilab code Ex2.7: Pg 46 (2008)
clc; clear;
E = 18;                  // E.m.f of battery, V
R1 = 4;                 // Resistance, ohm
R2 = 6;                 // Resistance, ohm
R3 = 5;                 // Resistance, ohm
R4 = 3;                 // Resistance, ohm
R5 = 6;                 // Resistance, ohm
R6 = 8;                 // Resistance, ohm
// Part (a)
// Since resistance R1 & R2 are in parallel, therefore, equivalent resistance across branch AB will be equal to the reciprocal of the sum of conductances ( 1/Ressistance) of individual resistances present in the circuit i.e 1/R_AB = 1/R1 + 1/R2, simplifying for R_AB 
R_AB = ( R1*R2 )/( R1 + R2);            // Resistance, ohm
R_BC = R3;                              // Resistance across branch BC, ohm
// Since resistance R4, R5 & R6 are in parallel, therefore, equivalent resistance across branch CD will be equal to the reciprocal of the sum of conductances ( 1/Ressistance) of individual resistances present in the circuit i.e 1/R_CD = 1/R4 + 1/R5 + 1/R6, simplifying for R _CD
R_CD = ( R4*R5*R6 )/( R4*R5 + R5*R6 + R6*R4 );      // Resistance, ohm
// Since R_AB, R_BC & R_CD forms series combination, therefore circuit resistance will be their series sum
R = R_AB + R_BC + R_CD;                  // Circuit resistance, ohm
I = E/R;                 // Supply current, A
// Part (b)
// AS resistances R1 & R2 are parallel, therefore tere will be same potential difference across them, denoted by V_AB
V_AB = I*R_AB;                           // Potential difference, V
// AS resistances R4, R5 & R6 are parallel, therefore tere will be same potential difference across them, denoted by V_CD
V_CD = I*R_CD;                  // Potential difference, V
V_BC = I*R_BC;                  // Potential difference, V
// Part (c)
I1 = V_AB/R1;                   // Current through R1 resistor, A
I2 = V_AB/R2;                   // Current through R2 resistor, A
I4 = V_CD/R4;                  // Current through R4 resistor, A
I5 = V_CD/R5;                  // Current through R5 resistor, A
I6 = V_CD/R6;                  // Current through R6 resistor, A
// Part (d)
P3= I^2*R3;                     // Power dissipated, W
printf("\nThe current drawn from the source = %1d A", I);
printf("\nThe p.d. across resistor %1d ohm & %1d ohm = %3.1f V", R1, R2, V_AB);
printf("\nThe p.d. across resistor %1d ohm, %1d ohm & %1d ohm = %3.1f V", R4, R5, R6, V_CD);
printf("\nThe p.d. across resistor %1d ohm = %2d V", R3, V_BC);
printf("\nThe current through resistor %1d ohm = %3.1f A", R1, I1);
printf("\nThe current through resistor %1d ohm = %3.1f A", R2, I2);
printf("\nThe current through resistor %1d ohm = %1d A", R3, I);
printf("\nThe current through resistor %1d ohm = %5.3f A", R4, I4);
printf("\nThe current through resistor %1d ohm = %5.3f A", R5,I5);
printf("\nThe current through resistor %1d ohm = %3.1f A", R6, I6);
printf("\nThe power dissipated by the %1d ohm resistor = %2d W", R3, P3);

// Result
// The current drawn from the source = 2 A
// The p.d. across resistor 4 ohm & 6 ohm = 4.8 V
// The p.d. across resistor 3 ohm, 6 ohm & 8 ohms = 3.2 V
// The p.d. across resistor 5 ohm = 10 V
// The current through resistor 4 ohm = 1.2 A
// The current through resistor 6 ohm = 0.8 A
// The current through resistor 5 ohm = 2 A
// The current through resistor 3 ohm = 1.067 A
// The current through resistor 6 ohm = 0.533 A
// The current through resistor 8 ohm = 0.4 A
// The power dissipated by the 5 ohm resistor = 20 W
