//Problem 5.10: Find the equivalent resistance for the circuit shown in Figure 5.17.

//initializing the variables:
R1 = 1; // in ohms
R2 = 2.2; // in ohms
R3 = 3; // in ohms
R4 = 6; // in ohms
R5 = 18; // in ohms
R6 = 4; // in ohms


//calculation:
R0 = 1/[(1/3) + (1/6) + (1/18)]
Rt = R1 + R2 + R0 + R6

printf("\n\nResult\n\n")
printf("\n Equivalent Resistance %.0f Ohms\n",Rt)