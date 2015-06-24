//Problem 13.07: Use Th´evenin’s theorem to find the current flowing in the 10 ohm resistor for the circuit shown in Figure 13.28(a).

//initializing the variables:
V = 10; // in volts
R1 = 2; // in ohms
R2 = 8; // in ohms
R3 = 5; // in ohms
R = 10; // in ohms

//calculation:
//The 10 ohm resistance branch is short-circuited as shown in Figure 13.28(b).
//Current I1
I1 = V/(R1 + R2)
//p.d. across AB, E
E = R2*I1
//the resistance ‘looking-in’ at a break made between A and B is given by
r = R3 + (R1*R2)/(R2 + R1)
//The equivalent Th´evenin’s circuit is shown in Figure 13.28(d), the current in the 10 ohm resistance is given by:
I = E/(r + R)

printf("\n\n Result \n\n") 
printf("\n the current in the 10 ohm resistance is given by %.3f A",I)