//Problem 5.03: A 12 V battery is connected in a circuit having three series-connected resistors having resistances of 4 ohms, 9 ohms and 11 ohms. Determine the current flowing through, and the p.d. across the 9 ohms resistor. Find also the power dissipated in the 11 ohms resistor.

//initializing the variables:
Vt = 12; // in volts
R1 = 4; // in ohms
R2 = 9; // in ohms
R3 = 11; // in ohms

//calculation:
Rt = R1 + R2 + R3
I = Vt/Rt
V9 = I*R2
P11 = I*I*R3

printf("\n\nResult\n\n")
printf("\n (a)current %.1f Amperes(A)",I)
printf("\n (b)Voltage(V2) %.1f Volts(V)",V9)
printf("\n (c)Power %.2f Watt(W)",P11)