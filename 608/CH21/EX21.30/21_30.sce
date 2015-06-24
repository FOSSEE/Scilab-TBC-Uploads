//Problem 21.30: A series motor runs at 800 rev/min when the voltag is 400 V and the current is 25 A. The armature resistance is 0.4 ohm and the series field resistance is 0.2 ohm. Determine the resistance to be connected in series to reduce the speed to 600 rev/min with the same current.

//initializing the variables:
Ia1 = 25; // in Amperes
Ra = 0.4; // in ohm
Rse = 0.2; // in ohm
n1 = 800/60; // in rev/sec
n2 = 600/60; // in rev/sec
V = 400; // in Volts

//calculation:
//e.m.f. E1
E1 = V - Ia1*(Ra + Rse)
//At n2, since the current is unchanged, the flux is unchanged.
//E1/E2 = n1/n2
E2 = E1*n2/n1
//and E2 = V - Ia1(Ra + Rse + R)
R = (V - E2)/Ia1 - Ra - Rse

printf("\n\n Result \n\n")
printf("\n Resistance is %.2f ohm", R)