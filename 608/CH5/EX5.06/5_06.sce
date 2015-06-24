//Problem 5.06:For the circuit shown in Figure 5.10, determine (a) the reading on the ammeter, and (b) the value of resistor R2

//initializing the variables:
R1 = 5; // in ohms
R3 = 20; // in ohms
I1 = 8; // in Amperes
It = 11; // in Amperes

//calculation:
Vt = I1*R1
I3 = Vt/R3
R2 = Vt/[It - I1 - I3]

printf("\n\nResult\n\n")
printf("\n (a)Ammeter Reading %.0f Amperes(A)",I3)
printf("\n (b)Resistance(R2) %.0f Ohms\n",R2)