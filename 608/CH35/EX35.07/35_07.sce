//Problem 35.07: Determine the optimum value of load resistance for maximum power transfer if the load is connected to an amplifier of output resistance 448 ohm through a transformer with a turns ratio of 8:1.

//initializing the variables:
Ro = 448; // in ohm
tr = 8; // turn ratio N1/N2

//calculation: 
//The equivalent input resistance r of the transformer must be Ro for maximum power transfer.
r = Ro
RL = r*(1/tr)^2

printf("\n\n Result \n\n")
printf("\n the optimum value of load resistance is %.0f ohm",RL)