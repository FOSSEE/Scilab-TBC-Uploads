//Problem 28.01: A coil having a resistance of 10 ohm and an inductance of 75 mH is connected in series with a 40 μF capacitor across a 200 V a.c. supply. Determine at what frequency resonance occurs, and (b) the current flowing at resonance.

//initializing the variables:
R = 10; // in ohms
C = 40e-6; // IN fARADS
L = 0.075; // IN Henry
V = 200; // in Volts

//calculation:
//Resonant frequency,
fr = 1/(2*%pi*((L*C)^0.5))
//Current at resonance, I
I = V/R

printf("\n\n Result \n\n")
printf("\n (a)Resonant frequency = %.1f Hz ",fr)
printf("\n (b)Current at resonance, I is %.0f A ",I)