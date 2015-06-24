//Problem 13.22: Find the value of the load resistor RL shown in Figure 13.51(a) that gives maximum power dissipation and determine the value of this power.

//initializing the variables:
V = 15; // in volts
R1 = 3; // in ohms
R2 = 12; // in ohms

//calculation:
//Resistance RL is removed from the circuit as shown in Figure 13.51(b).
//The p.d. across AB is the same as the p.d. across the 12 ohm resistor.
E = (R2/(R1 + R2))*V
//Removing the source of e.m.f. gives the circuit of Figure 13.51(c),
//from which resistance, r
r = R1*R2/(R1 + R2)
//The equivalent Th´evenin’s circuit supplying terminals AB is shown in Figure 13.51(d), from which, current I = E/(r + RL)
//For maximum power, RL = r
RL = r
I = E/(r + RL)
//Power, P, dissipated in load RL, P
P = RL*I^2

printf("\n\n Result \n\n") 
printf("\n (a) the value of the load resistor RL is %.1f ohm",RL)
printf("\n (b) maximum power dissipation = %.0f W",P)