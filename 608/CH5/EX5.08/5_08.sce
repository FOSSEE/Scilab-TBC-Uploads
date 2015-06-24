//Problem 5.08: For the circuit shown in Figure 5.12, find (a) the value of the supply voltage V and (b) the value of current I.

//initializing the variables:
R1 = 10; // in ohms
R2 = 20; // in ohms
R3 = 60; // in ohms
I2 = 3; // in Amperes

//calculation:
Vt = I2*R2
I1 = Vt/R1
I3 = Vt/R3
I = I1 +I2 + I3

printf("\n\nResult\n\n")
printf("\n (a)Voltage(V) %.0f Volts(V)",Vt)
printf("\n (b)Total Current(I) %.0f Amperes(A)",I)