//Problem 13.21: A d.c. source has an open-circuit voltage of 30 V and an internal resistance of 1.5 ohm. State the value of load resistance that gives maximum power dissipation and determine the value of this power.

//initializing the variables:
V = 30; // in volts
r = 1.5; // in ohms

//calculation:
//current I = E/(r + RL)
//For maximum power, RL = r
RL = r
I = V/(r + RL)
//Power, P, dissipated in load RL, P
P = RL*I^2

printf("\n\n Result \n\n") 
printf("\n (a) the value of the load resistor RL is %.1f ohm",RL)
printf("\n (b) maximum power dissipation = %.0f W",P)