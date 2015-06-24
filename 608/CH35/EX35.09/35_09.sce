//Problem 35.09: A single-phase, 240 V/1920 V ideal transformer is supplied from a 240 V source through a cable of resistance 5 ohm. If the load across the secondary winding is 1.60 kohm determine (a) the primary current flowing, and (b) the power dissipated in the load resistance.

//initializing the variables:
V1 = 240; // in volts
V2 = 1920; // in volts
R1 = 5; // in ohms
R2 = 1600; // in ohms

//calculation: 
//The network is shown in Figure 35.12.
//turn ratio N1/N2 = V1/V2
tr = V1/V2
//Equivalent input resistance of the transformer,
RL = R2
r = RL*tr^2
//Total input resistance,
Rin = R1 + r
//primary current, I1
I1 = V1/Rin
//For an ideal transformer V1/V2 = I2/I1
I2 = I1*(V1/V2)
//Power dissipated in the load resistance
P = RL*I2^2

printf("\n\n Result \n\n")
printf("\n (a) primary current flowing is %.0f A",I1)
printf("\n (b) Power dissipated in the load resistance is %.0fW",P)