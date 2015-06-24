//Problem 13.06: For the circuit shown in Figure 13.16, find, using the superposition theorem, (a) the current flowing in and the pd across the 18 ohm resistor, (b) the current in the 8 V battery and (c) the current in the 3 V battery.

//initializing the variables:
E1 = 8; // in volts
E2 = 3; // in volts
R1 = 3; // in ohms
R2 = 2; // in ohms
R3 = 18; // in ohms

//calculation:
//Removing source E2 gives the circuit of Figure 13.17(a).
//The current directions are labelled as shown in Figure 13.17(a), I1 flowing from the positive terminal of E1.
//From Figure 13.17(b), I1
r1 = 1/(1/R2 + 1/R3)
I1 = E1/(R1 + r1)
//From Figure 13.17(a), I2
I2 = (R3/(R3 + R2))*I1
I3 = (R2/(R3 + R2))*I1
//Removing source E1 gives the circuit of Figure 13.18(a)
//The current directions are labelled as shown in Figures 13.18(a) and 13.18(b), I4 flowing from the positive terminal of E2
//From Figure 13.18(c), I4
r2 = 1/(1/R3 + 1/R1)
I4 = E2/(r2 + R2)
//From Figure 13.18(b), I5
I5 = (R3/(R1 + R3))*I4
I6 = (R1/(R1 + R3))*I4
//Resultant current in the R3 resistor
I18 = I3 - I6
//P.d. across the R3
V3 = I18*R3
//Resultant current in the E1
Ie1 = I1 + I5
//Resultant current in the E2
Ie2 = I2 + I4

printf("\n\n Result \n\n") 
printf("\n Resultant current in the 18 ohm resistor is %.3f A",I18)
printf("\n P.d. across the 18 ohm resistor is %.3f V",V3)
printf("\n Resultant current in the E1 is %.3f A",Ie1)
printf("\n Resultant current in the E2 is %.3f A",Ie2)