//Problem 3.01: The resistance of a 5 m length of wire is 600 ohms. Determine (a) the resistance of an 8 m length of the same wire, and (b) the length of the same wire when the resistance is 420 ohms.

//initializing the variables:
R = 600; // in ohms
L = 5; // in meter
L1 = 8; // in meter
R2 = 420; // in ohms

//calculation:
R1 = R*L1/L
L2 = R2*L/R

printf("\n\nResult\n\n")
printf("\n(a)Resistance %.0f Ohms",R1)
printf("\n(b)Length: %.1f meters(m)\n",L2)