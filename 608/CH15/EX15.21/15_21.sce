//Problem 15.21: A series circuit comprises a coil of resistance 2 ohms and inductance 60 mH, and a 30 μF capacitor. Determine the Qfactor of the circuit at resonance.

//initializing the variables:
L = 60E-3; // in Henry
C = 30E-6; // in Farads
R = 2; // in ohms

//calculation:
Q = ((L/C)^0.5)/R

printf("\n\n Result \n\n") 
printf("\n At resonance, Q-factor = %.2f",Q)