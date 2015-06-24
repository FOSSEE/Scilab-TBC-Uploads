// scilab code Ex2.4: Pg 39 (2008)
clc; clear;
E = 12;                // E.m.f of battery, V
R1 = 6;                // Resistance, ohms
R2 = 3;                // Resistance, ohms
// Since the two resistances are in parallel, therefore effective resistance of the circuit is equal to the reciprocal of the sum of conductances ( 1/Ressistance) of individual resistances present in the circuit i.e 1/R = 1/R1 + 1/R2, simplifying for R 
R = ( R1*R2)/(R1 + R2);          // Effective resistance of the circuit, ohms
// Fron Ohm's law, V = I*R, solving for I
I = E/R;                 // Circuit current, A
I1 = E/R1;               // Current through resistance R1, A
I2 = E/R2;               // Current thrugh resistance R2, A
printf("\nEffective resistance of the circuit = %1d ohms", R);
printf("\nThe current drawn from the battery = %1d A", I);
printf("\nThe current through resistor R1 = %1d A", I1);
printf("\nThe current through R2 resistor = %1d A", I2);

// Result
// Effective resistance of the circuit = 2 ohms
// The current drawn from the battery = 6 A
// The current through resistor R1 = 2 A
// The current through R2 resistor = 4 A
