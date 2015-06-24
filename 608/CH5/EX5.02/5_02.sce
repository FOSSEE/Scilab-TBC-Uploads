//Problem 5.02: For the circuit shown in Figure 5.3, determine the p.d. across resistor R3. If the total resistance of the circuit is 100 ohms, determine the current flowing through resistor R1. Find also the value of resistor R2

//initializing the variables:
V1 = 10; // in volts
V2 = 4; // in volts
Vt = 25; // in volts
Rt = 100; // in ohms

//calculation:
V3 = Vt - V1 - V2
I = Vt/Rt
R2 = V2/I

printf("\n\nResult\n\n")
printf("\n (a)Voltage(V3) %.0f Volts(V)",V3)
printf("\n (b)current %.2f Amperes(A)",I)
printf("\n (c)Resistance(R2) %.0f Ohms",R2)