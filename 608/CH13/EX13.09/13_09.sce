//Problem 13.09: Use Th´evenin’s theorem to determine the current I flowing in the 4 ohm resistor shown in Figure 13.30(a). Find also the power dissipated in the 4 ohm resistor.

//initializing the variables:
E1 = 4; // in volts
E2 = 2; // in volts
R1 = 2; // in ohms
R2 = 1; // in ohms
R3 = 4; // in ohms

//calculation:
//The 4 ohm resistance branch is short-circuited as shown in Figure 13.30(b).
//Current I1
I1 = (E1 - E2)/(R1 + R2)
//p.d. across AB, E
E = E1 - I1*R1
//the resistance ‘looking-in’ at a break made between A and B is given by
r = R2*R1/(R2 + R1)
//The equivalent Th´evenin’s circuit is shown in Figure 13.30(d), the current in the 4ohm resistance is given by:
I = E/(r + R3)
//Power dissipated in R3
P3 = R3*I^2

printf("\n\n Result \n\n") 
printf("\n the current in the 4 ohm resistance is given by %.3f A",I)
printf("\n power disipated in 4 ohm resistor is given by %.3f W",P3)