// Scilab code Ex2.14: Pg 64 (2008)
clc; clear;
// For part (a)
Rm = 1000;                // Resistance, ohm
Rd = 1;                   // Resistance, ohm
Rv = 3502;                // Resistance, ohm
// Using Wheatstone bridge balanced condition i.e Rx/Rv = Rm/Rd , solving for Rx
Rx = ( Rm/Rd) * Rv;          // Resistance,ohm
printf("\nThe value of the resistance being measured = %5.3f mega-ohm",Rx*1e-06);

// Part (b)
Rm = 1;                // Resistance, ohm
Rd = 1000;                   // Resistance, ohm
Rv = 296;                // Resistance, ohm
// Using Wheatstone bridge balanced condition i.e Rx/Rv = Rm/Rd , solving for Rx
Rx = ( Rm/Rd )*Rv;          // Resistance,ohm
printf("\nThe value of the resistance being measured = %5.3f ohm",Rx);

// Result
// The value of the resistance being measured = 3.502 mega-ohm
// The value of the resistance being measured = 0.296 ohm
