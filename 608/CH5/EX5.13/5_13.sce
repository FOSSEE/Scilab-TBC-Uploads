//Problem 5.13: For the arrangement shown in Figure 5.22, find the current Ix

//initializing the variables:
R1 = 8; // in ohms
R2 = 2; // in ohms
R3 = 1.4; // in ohms
R4 = 9; // in ohms
R5 = 2; // in ohms
Vt = 17; // in volts

//calculation:
R01 = R1*R2/(R1 + R2)
R02 = R01 + R3
R03 = R4*R02/(R4 +R02)
Rt = R5 + R03
It = Vt/Rt
I1 = R4*It/(R4 + R02)
Ix = R2*I1/(R1 + R2)

printf("\n\nResult\n\n")
printf("\n Current(Ix) %.1f Amperes(A)\n",Ix)