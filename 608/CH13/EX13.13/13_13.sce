//Problem 13.13: Use Norton’s theorem to determine the current I flowing in the 4 ohm resistance shown in Figure 13.35(a).

//initializing the variables:
V1 = 4; // in volts
V2 = 2; // in volts
R1 = 2; // in ohms
R2 = 1; // in ohms
R3 = 4; // in ohms

//calculation:
//The 4ohm resistance branch is short-circuited as shown in Figure 13.35(b).
//Figure 13.35(b)
Isc = V1/R1 + V2/R2
//the resistance ‘looking-in’ at a break made between A and B is given by
r = R1*R2/(R1 + R2)
//From the Norton equivalent network shown in Figure 13.35(c) the current in the 4ohm resistance is given by:
I = (r/(r + R3))*Isc

printf("\n\n Result \n\n") 
printf("\n the current in the 4ohm resistance is given by %.3f A",I)