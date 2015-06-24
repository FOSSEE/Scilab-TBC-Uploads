// Scilab code Ex2.5: Pg 39-40 (2008)
clc; clear;
R1 = 10;                  // Resistance, ohm
R2 = 20;                  // Resistance, ohm
R3 = 30;                  // Resistance, ohm
// Part (a)
// Since in sreies combination, the equivalent resistance of the circuit is the sum of the individual resistances present in the circuit i.e R = R1 + R2 + R3
R_s = R1 + R2 + R3;         // Equivalent series resistance of the circuit, ohms
// Part (b)
// Since in parallel combination, the equivalent resistance of the circuit is the reciprocal of the  sum of the conductances of the individual resistances present in the circuit i.e 1/R = 1/R1 + 1/R2 + 1/R3, solving for R;
R_p = ( R1*R2*R3 )/( R1*R2 + R2*R3 + R3*R1 );      // Equivalent parallel resistance of the circuit, ohms
printf("\nEquivalent series resistance of the circuit = %2d ohm", R_s);
printf("\nEquivalent parallel resistance of the circuit = %4.2f ohm", R_p);

// Result
// Equivalent series resistance of the circuit = 60 ohm 
// Equivalent parallel resistance of the circuit = 5.45 ohm
