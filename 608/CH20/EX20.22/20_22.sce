//Problem 20.22: Determine the optimum value of load resistance for maximum power transfer if the load is connected to an amplifier of output resistance 150 ohm through a transformer with a turns ratio of 5:1..

//initializing the variables:
tr = 5; // turn ratio
R1 = 150; // in Ohms

//calculation:
//The equivalent input resistance, R1 of the transformer needs to be 150 ohm for maximum power transfer.
//R1 = RL*(tr^2)
RL = R1/(tr^2)

printf("\n\n Result \n\n")
printf("\n the optimum value of load resistance is %.0f ohm", RL)