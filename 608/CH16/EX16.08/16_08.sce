//Problem 16.08: A pure inductance of 150 mH is connected in parallel with a 40 μF capacitor across a 50 V, variable frequency supply. Determine (a) the resonant frequency of the circuit and (b) the current circulating in the capacitor and inductance at resonance.

//initializing the variables:
C = 40E-6; // in Farads
R = 0; // in Ohms
L = 150E-3; // in Henry
V = 50; // in Volts

//calculation:
fr = ((1/(L*C) - R*R/(L*L))^0.5)/(2*%pi)
Xc = 1/(2*%pi*fr*C)
Icirc = V/Xc

printf("\n\n Result \n\n")
printf("\n (a)Parallel resonant frequency, fr = %.2f Hz ",fr)
printf("\n (b)Current circulating in L and C at resonance = %.3f A ",Icirc)