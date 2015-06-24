//Problem 28.02: An R–L–C series circuit is comprised of a coil of inductance 10 mH and resistance 8 ohm and a variable capacitor C. The supply frequency is 1 kHz. Determine the value of capacitor C for series resonance.

//initializing the variables:
R = 8; // in ohms
L = 0.010; // IN Henry
f = 1000; // in Hz

//calculation:
//At resonance
//capacitance C
C = 1/(L*(2*%pi*f)^2)

printf("\n\n Result \n\n")
printf("\n capacitance, C is %.2E F\n",C)