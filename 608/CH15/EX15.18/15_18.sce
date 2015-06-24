//Problem 15.18: A coil having a resistance of 10 ohms and an inductanc of 125 mH is connected in series with a 60 μF capacitor across a 120 V supply. At what frequency does resonance occur? Find the current flowing at the resonant frequency.

//initializing the variables:
R = 10; // in ohms
C = 60E-6; // in Farads
L = 125E-3; // in Henry
V = 120; // in Volts

//calculation:
fr = 1/(2*%pi*(L*C)^0.5)
//At resonance, XL = Xc and impedance Z = R
I = V/R

printf("\n\n Result \n\n") 
printf("\n (a)Resonance frequency,Fr = %.2f Hz",fr)
printf("\n (b)Current, I = %.0f",I)