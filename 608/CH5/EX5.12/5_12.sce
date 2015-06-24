//Problem 5.12: For the circuit shown in Figure 5.21 calculate (a) the value of resistor Rx such that the total power dissipated in the circuit is 2.5 kW, and (b) the current flowing in each of the four resistors.

//initializing the variables:
R1 = 15; // in ohms
R2 = 10; // in ohms
R3 = 38; // in ohms
Vt = 250; // in volts
P = 2500; // in Watt

//calculation:
It = P/Vt
I2 = R1*It/(R1+R2)
I1 = It - I2
Re1 = 1/[(1/R1) + (1/R2)]
Rt = Vt/It
Re2 = Rt - Re1
Rx = 1/[(1/Re2) - (1/R3)]
I4 = R3*It/(R3+Rx)
I3 = It - I4

printf("\n\nResult\n\n")
printf("\n (a)Resistance (Rx) %.0f Ohms",Rx)
printf("\n (b)Current through resistors (R1, R2, R3, R4): %.0f, %.0f, %.0f, %.0f Amperes(A) respectively",I1, I2, I3, I4)