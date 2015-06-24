//Problem 15.05: Calculate the current taken by a 23 μF capacitor when connected to a 240 V, 50 Hz supply.

//initializing the variables:
C = 23E-6; // in Farads
f = 50; // in Hz
V = 240; // in volts

//calculation:
Xc = 1/(2*%pi*f1*C)
I = V/Xc

printf("\n\n Result \n\n") 
printf("\n current I = %.2f A ",I)