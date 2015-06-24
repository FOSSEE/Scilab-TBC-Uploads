//Problem 13.14: Use Norton’s theorem to determine the current flowing in the 3 ohm resistance of the network shown in Figure 13.36(a). The voltage source has negligible internal resistance.

//initializing the variables:
V = 24; // in volts
R1 = 20; // in ohms
R2 = 5; // in ohms
R3 = 10; // in ohms
R4 = 5/3; // in ohms
R5 = 3; // in ohms

//calculation:
//The 3ohm resistance branch is short-circuited as shown in Figure 13.36(b).
//Figure 13.36(c) is equivalent to Figure 13.36(b).
Isc = V/R2
//the resistance ‘looking-in’ at a break made between A and B is given by
r = R3*R2/(R3 + R2)
//From the Norton equivalent network shown in Figure 13.36(f) the current in the 3ohm resistance is given by:
I = (r/(r + R4 + R5))*Isc

printf("\n\n Result \n\n") 
printf("\n the current in the 3ohm resistance is given by %.0f A",I)