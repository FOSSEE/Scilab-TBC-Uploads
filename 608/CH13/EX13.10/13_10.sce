//Problem 13.10: Use Th´evenin’s theorem to determine the current flowing in the 3 ohm resistance of the network shown in Figure 13.31(a). The voltage source has negligible internal resistance.

//initializing the variables:
V = 24; // in volts
R1 = 20; // in ohms
R2 = 5; // in ohms
R3 = 10; // in ohms
R4 = 5/3; // in ohms
R5 = 3; // in ohms

//calculation:
//The 3 ohm resistance branch is short-circuited as shown in Figure 13.31(b).
//P.d. across R3
V3 = (R3/(R3 + R2))*V
//p.d. across AB, E
E = V3
//the resistance ‘looking-in’ at a break made between A and B is given by
r = R4 + R2*R3/(R2 + R3)
//The equivalent Th´evenin’s circuit is shown in Figure 13.31(e), the current in the 32 ohm resistance is given by:
I = E/(r + R5)

printf("\n\n Result \n\n") 
printf("\n the current in the 3 ohm resistance is given by %.0f A",I)