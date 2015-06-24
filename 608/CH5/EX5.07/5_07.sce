//Problem 5.07: Two resistors, of resistance 3 ohms and 6 ohms, are connected in parallel across a battery having a voltage of 12 V. Determine (a) the total circuit resistance and (b) the current flowing in the 3 ohms resistor.

//initializing the variables:
R1 = 3; // in ohms
R2 = 6; // in ohms
Vt = 12; // in volts

//calculation:
Rt = R1*R2/[R1 + R2]
I1 = [Vt/R1]

printf("\n\nResult\n\n")
printf("\n (a)Total Resistance %.0f Ohms",Rt)
printf("\n (b)Current(I1) %.0f Amperes(A)\n",I1)