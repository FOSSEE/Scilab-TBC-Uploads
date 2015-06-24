//Problem 13.11: A Wheatstone Bridge network is shown in Figure 13.32(a). Calculate the current flowing in the 32 ohm resistor, and its direction, using Th´evenin’s theorem. Assume the source of e.m.f. to have negligible resistance.

//initializing the variables:
E = 54; // in volts
R1 = 2; // in ohms
R2 = 14; // in ohms
R3 = 3; // in ohms
R4 = 11; // in ohms
R5 = 32; // in ohms

//calculation:
//The 32ohm resistance branch is short-circuited as shown in Figure 13.32(b).
//The p.d. between A and C,
Vac = (R1/(R1 + R4))*E
//The p.d. between B and C,
Vbc = (R2/(R2 + R3))*E
//Hence the p.d. between A and B
Vab = Vbc - Vac
//the resistance ‘looking-in’ at a break made between A and B is given by
r = R1*R4/(R1 + R4) + R2*R3/(R2 + R3)
//The equivalent Th´evenin’s circuit is shown in Figure 13.32(f), the current in the 32 ohm resistance is given by:
I = E/(r + R5)

printf("\n\n Result \n\n") 
printf("\n the current in the 32 ohm resistance is given by %.0f A",I)