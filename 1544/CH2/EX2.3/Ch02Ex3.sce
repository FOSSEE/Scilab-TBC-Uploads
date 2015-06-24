// Scilab code Ex2.3: Pg 37 (2008)
clc; clear;
E = 24;             // E.m.f of battery, V
R_1 = 330;          // Resistance, ohms
R_2 = 1500;          //Resistance, ohms
R_3 = 470;            //Resistance, ohms
// Since one end of each resistor is connected to positive terminal of battery and the other end to the negative terminal, therefore, the resistors are in parallel & in parallel connection the equivalent resistance of  the circuit is equal to the reciprocal of the sum of conductances of individual resistances present in the circuit i.e 1/R = 1/R_1 + 1/R_2 + 1/R_3, solving for R  
R = (R_1*R_2*R_3)/( R_1*R_2 + R_2*R_3 + R_3*R_1);      // Equivalent resisance of circuit, ohms
// Since the resistances are in parallel so potetial difference across each resistor is same & in our case is equal to e.m.f of battery & from Ohm's law, V = I*R, solving for I
I_1 = E/R_1;          // Current through resistor R_1, A
I_2 = E/R_2;          // Current through resistor R_2, A
I_3 = E/R_3;          // Current through resistance R_3, A
// Current drawn from battery is equal to the sum of branch currents
I = I_1 + I_2 + I_3;              // Current drawn from battery, A
printf("\nThe total resistance of the circuit = %6.2f ohms",R);
printf("\nThe branch current I1 = %5.2f mA\nThe branch current I2 = %2d mA\nThe branch current I3 = %5.2f mA", I_1/1e-03, I_2/1e-03, I_3/1e-03);
printf("\nThe current drawn from the battery = %5.1f mA", I/1e-03);

// Result
// The total resistance of the circuit = 171.68 ohms
// The branch current I1 = 72.73 mA
// The branch current I2 = 16 mA
// The branch current I3 = 51.06 mA
// The current drawn from the battery = 139.8 mA 
