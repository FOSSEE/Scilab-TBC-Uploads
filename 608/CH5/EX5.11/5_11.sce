//Problem 5.11: For the series-parallel arrangement shown in Figure 5.19, find (a) the supply current, (b) the current flowing through each resistor and (c) the p.d. across each resistor.

//initializing the variables:
R1 = 2.5; // in ohms
R2 = 6; // in ohms
R3 = 2; // in ohms
R4 = 4; // in ohms
Vt = 200; // in volts

//calculation:
R0 = 1/[(1/R2) + (1/R3)]
Rt = R1 + R0 + R4
It = Vt/Rt
I1 = It
I4 = It
I2 = R3*It/(R3+R2)
I3 = It - I2
V1 = I1*R1
V2 = I2*R2
V3 = I3*R3
V4 = I4*R4

printf("\n\nResult\n\n")
printf("\n (a)Total Current Supply %.0f Amperes(A)",It)
printf("\n (b)Current through resistors (R1, R2, R3, R4)%.0f, %.2f, %.2f, %.0f Amperes(A) respectively",I1, I2, I3, I4)
printf("\n (c)voltage across resistors (R1, R2, R3, R4)%.1f, %.1f, %.1f, %.0f Volts(V) respectively",V1, V2, V3, V4)