//Problem 13.08: For the network shown in Figure 13.29(a) determine the current in the 0.8 ohm resistor using Th´evenin’s theorem.

//initializing the variables:
V = 12; // in volts
R1 = 5; // in ohms
R2 = 1; // in ohms
R3 = 4; // in ohms
R = 0.8; // in ohms

//calculation:
//The 0.8 ohm resistance branch is short-circuited as shown in Figure 13.29(b).
//Current I1
I1 = V/(R1 + R2 + R3)
//p.d. across AB, E
E = R3*I1
//the resistance ‘looking-in’ at a break made between A and B is given by
r = R3*(R1 + R2)/(R2 + R1 + R3)
//The equivalent Th´evenin’s circuit is shown in Figure 13.29(d), the current in the 0.8 ohm resistance is given by:
I = E/(r + R)

printf("\n\n Result \n\n") 
printf("\n the current in the 0.8 ohm resistance is given by %.1f A",I)