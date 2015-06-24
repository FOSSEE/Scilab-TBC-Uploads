//Problem 5.01: For the circuit shown in Figure 5.2, determine (a) the battery voltage V, (b) the total resistance of the circuit, and (c) the values of resistance of resistors R1, R2 and R3, given that the p.d.’s across R1, R2 and R3 are 5 V, 2 V and 6 V respectively.

//initializing the variables:
V1 = 5; // in volts
V2 = 2; // in volts
V3 = 6; // in volts
I = 4; // in Amperes

//calculation:
Vt = V1 + V2 + V3
Rt = Vt/I
R1 = V1/I
R2 = V2/I
R3 = V3/I

printf("\n\nResult\n\n")
printf("\n (a) Total Voltage %.0f Volts(V)",Vt)
printf("\n (b)Total Resistance %.2f Ohms",Rt)
printf("\n (c)Resistance(R1) %.2f Ohms",R1)
printf("\n (c)Resistance(R2) %.1f Ohms",R2)
printf("\n (c)Resistance(R3) %.1f Ohms",R3)