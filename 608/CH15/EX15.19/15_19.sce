//Problem 15.19: The current at resonance in a series L–C–R circuit is 100 μA. If the applied voltage is 2 mV at a frequency of 200 kHz, and the circuit inductance is 50 μH, find (a) the circuit resistance, and (b) the circuit capacitance.

//initializing the variables:
L = 0.05E-3; // in Henry
fr = 200000; // in Hz
V = 0.002; // in Volts
I = 0.1E-3; // in amperes

//calculation:
// L-C-R
//At resonance, XL = Xc and impedance Z = R
R = V/I
C = 1/(L*(2*%pi*fr)^2)

printf("\n\n Result \n\n") 
printf("\n (a)Resistance, R = %.0f ohms",R)
printf("\n (b)Capacitance, C = %.2E F",C)