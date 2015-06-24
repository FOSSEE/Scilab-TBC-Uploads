//Problem 27.02: For the Wien bridge shown in Figure 27.9, R2 = R3 = 30 kohm, R4 = 1 kohm and C2 = C3 = 1 nF. Determine, when the bridge is balanced, (a) the value of resistance R1, and (b) the frequency of the bridge.

//initializing the variables:
R2 = 30000; // in ohms
R3 = 30000; // in ohms
R4 = 1000; // in ohms
C2 = 1e-9; // IN fARADS
C3 = 1e-9; // IN fARADS

//calculation:
//the bridge is balanced
R1 = R4/((R3/R2) + (C2/C3))
//frequency, f
f = 1/(2*%pi*((C2*C3*R2*R3)^0.5))

printf("\n\n Result \n\n")
printf("\n (a)Resistance R1 = %.0f ohm",R1)
printf("\n (b)frequency, f is %.2E Hz ",f)