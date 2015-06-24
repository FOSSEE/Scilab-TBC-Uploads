//Problem 20.20: A transformer having a turns ratio of 4:1 supplies a load of resistance 100 ohm. Determine the equivalent input resistance of the transformer.

//initializing the variables:
tr = 4; // turn ratio
RL = 100; // in Ohms

//calculation:
//the equivalent input resistance,
Ri = RL*(tr^2)

printf("\n\n Result \n\n")
printf("\n the equivalent input resistance is %.0f ohm", Ri)