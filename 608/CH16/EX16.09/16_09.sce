//Problem 16.09: A coil of inductance 0.20 H and resistance 60 ohm is connected in parallel with a 20 μF capacitor across a 20 V, variable frequency supply. Calculate (a) the resonant frequency, (b) the dynamic resistance, (c) the current at resonance and (d) the circuit Q-factor at resonance.

//initializing the variables:
C = 20E-6; // in Farads
R = 60; // in Ohms
L = 200E-3; // in Henry
V = 20; // in Volts

//calculation:
fr = ((1/(L*C) - R*R/(L*L))^0.5)/(2*%pi)
Rd = L/(R*C)
Ir = V/Rd
Q = 2*%pi*fr*L/R

printf("\n\n Result \n\n")
printf("\n (a)Parallel resonant frequency, fr = %.2f Hz ",fr)
printf("\n (b)the dynamic resistance,RD = %.1f ohm ",Rd)
printf("\n (c)Current at resonance = %.2f A ",Ir)
printf("\n (d)Q-factor = %.2f",Q)