//Problem 13.15: Determine the current flowing in the 2ohm resistance in the network shown in Figure 13.37(a).

//initializing the variables:
I = 15; // in amperes
R1 = 6; // in ohms
R2 = 4; // in ohms
R3 = 8; // in ohms
R4 = 2; // in ohms
R5 = 7; // in ohms

//calculation:
//The 2ohm resistance branch is short-circuited as shown in Figure 13.37(b).
//Figure 13.37(c) is equivalent to Figure 13.37(b).
Isc = (R1/(R1 + R2))*I
//the resistance ‘looking-in’ at a break made between A and B is given by
r = ((R1 + R2)*(R3 + R5)/(R1 + R2 + R3 + R5))
//From the Norton equivalent network shown in Figure 13.37(e) the current in the 2ohm resistance is given by:
I = (r/(r + R4))*Isc

printf("\n\n Result \n\n") 
printf("\n the current in the 2ohm resistance is given by %.2f A",I)