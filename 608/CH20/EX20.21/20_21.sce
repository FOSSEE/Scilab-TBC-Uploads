//Problem 20.21: The output stage of an amplifier has an output resistance of 112 ohm. Calculate the optimum turns ratio of a transformer which would match a load resistance of 7 ohm to the output resistance of the amplifier.

//initializing the variables:
R1 = 112; // in Ohms
RL = 7; // in Ohms

//calculation:
//The equivalent input resistance, R1 of the transformer needs to be 112 ohm for maximum power transfer.
//R1 = RL*(tr^2)
// tr = N1/N2 turn ratio
tr = (R1/RL)^0.5

printf("\n\n Result \n\n")
printf("\n the optimum turns ratio is %.0f ", tr)