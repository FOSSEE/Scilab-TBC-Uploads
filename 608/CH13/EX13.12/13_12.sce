//Problem 13.12: Use Norton’s theorem to determine the current flowing in the 10 ohm resistance for the circuit shown in Figure 13.34(a).

//initializing the variables:
V = 10; // in volts
R1 = 2; // in ohms
R2 = 8; // in ohms
R3 = 5; // in ohms
R4 = 10; // in ohms

//calculation:
//The 10ohm resistance branch is short-circuited as shown in Figure 13.34(b).
//Figure 13.34(c) is equivalent to Figure 13.34(b). Hence
Isc = V/R1
//the resistance ‘looking-in’ at a break made between A and B is given by
r = R1*R2/(R1 + R2)
//From the Norton equivalent network shown in Figure 13.34(d) the current in the 10 ohm resistance is given by:
I = (r/(r + R3 + R4))*Isc

printf("\n\n Result \n\n") 
printf("\n the current in the 10 ohm resistance is given by %.3f A",I)