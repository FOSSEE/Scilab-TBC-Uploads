//Problem 29.01: A coil of inductance 5 mH and resistance 10 ohm is connected in parallel with a 250 nF capacitor across a 50 V variable-frequency supply. Determine (a) the resonant frequency, (b) the dynamic resistance, (c) the current at resonance, and (d) the circuit Q-factor at resonance.

//initializing the variables:
R = 10; // in ohms
L = 0.005; // IN Henry
C = 0.25e-6; // IN fARADS
V = 50; //in volts

//calculation:
//Resonant frequency, for parallel
fr = ((1/(L*C) - ((R^2)/(L^2)))^0.5)/(2*%pi)
//dynamic resistance
Rd = L/(C*R)
//Current at resonance
Ir = V/Rd
wr = 2*%pi*fr
//Q-factor at resonance, Q = wr*L/R
Qr = wr*L/R

printf("\n\n Result \n\n")
printf("\n (a)Resonance frequency is %.0f Hz ",fr)
printf("\n (b)dynamic resistance %.0f ohm ",Rd)
printf("\n (c)Current at resonance, Ir is %.3f A ",Ir)
printf("\n (d)Q-factor at resonance is %.1f ",Qr)