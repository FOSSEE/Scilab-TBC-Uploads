//Problem 2.07: What is the resistance of a coil which draws a current of (a) 50 mA and (b) 200 μA from a 120 V supply?

//initializing the variables:
I1 = 0.050; // in Ampere
I2 = 200E-6; // in Ampere
V = 120; // in Volts

//calculation:
R1 = V/I1
R2 = V/I2

printf("\n\nResult\n\n")
printf("\nResistance(R1): %.0f Ohms",R1)
printf("\nResistance(R2): %.0f Ohms\n",R2)