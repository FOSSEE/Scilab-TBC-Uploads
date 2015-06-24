//Problem 16.10: A coil of inductance 100 mH and resistance 800 ohm is connected in parallel with a variable capacitor across a 12 V, 5 kHz supply. Determine for the condition when the supply current is a minimum: (a) the capacitance of the capacitor, (b) the dynamic resistance, (c) the supply current, and (d) the Q-factor.

//initializing the variables:
fr = 5000; // in ohm
R = 800; // in Ohms
L = 100E-3; // in Henry
V = 12; // in Volts

//calculation:
C = 1/(L*{(2*%pi*fr)^2 + R*R/(L*L)})
Rd = L/(R*C)
Ir = V/Rd
Q = 2*%pi*fr*L/R

printf("\n\n Result \n\n")
printf("\n (a)capacitance, C = %.3E F ",C)
printf("\n (b)the dynamic resistance,RD = %.0f ohm ",Rd)
printf("\n (c)Current at resonance = %.3E A ",Ir)
printf("\n (d)Q-factor = %.2f ",Q)