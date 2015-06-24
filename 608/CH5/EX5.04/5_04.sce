//Problem 5.04:Determine the value of voltage V shown in Figure 5.6.

//initializing the variables:
Vt = 50; // in volts
R1 = 4; // in ohms
R2 = 6; // in ohms

//calculation:
Rt = R1 + R2
I = Vt/Rt
V2 = I*R2

printf("\n\nResult\n\n")
printf("\n Voltage(V) %.0f Volts(V)\n",V2)