// scilab code Ex2.1: Pg 32 (2008)
clc; clear;
E = 24;           // E.m.f of battery,V
R1 = 330;         // Resistance, ohms
R2 = 1500;        // Resistance, ohms
R3 = 470;         // Resistance, ohms
// As resistances R1, R2 & R3 are joined end-to-end hence, they are in series & in series connection, circuit resistance is the sum of individual resistances present in the circuit
R = R1 + R2 + R3;    // Resistance of circuit, ohms
I = E/R;             // Circuit current, A
// As the resistances are in series so same current flows through each resistor & potential drop across each resistor is equal to the product of circuit current & its respective resistance( from Ohm's law, V = I*R )
V1 = I*R1;           // Potential difference developed across resistance R1, V
V2 = I*R2;            // Potential difference developed across resistance R2, V
V3 = I*R3;             // Potential difference developed across resistance R3, V
P = E*I;               // Electric power dissipated by the complete circuit, W
printf("\nThe circuit resistance = %4d ohms or %3.1f kilo-ohms", R, R*1e-03);
printf("\nThe circuit current = %5.2f milli-ampere",I/1e-03);
printf("\nThe potential drop across resisatnce R1 = %4.2f volts\nThe potential drop across resistance R2 = %5.2f volts\nThe potential drop across resistance R3 = %4.2f volts", V1, V2, V3);
printf("\nThe power dissipated by the complete circuit = %4.2f watt or %3d milli-watt", P,P/1e-03 );

// Result
// The circuit resistance = 2300 ohms or 2.3 kilo-ohms
// The circuit current = 10.43 milli-ampere
// The potential drop across resisatnce R1 = 3.44 volts
// The potential drop across resistance R2 = 15.65 volts
// The potential drop across resistance R3 = 4.90 volts
// The power dissipated by the complete circuit = 0.25 watt or 250 milli-watt
