//Problem 20.23: A single-phase, 220 V/1760 V ideal transformer is supplied from a 220 V source through a cable of resistance 2 ohm. If the load across the secondary winding is 1.28 kohm determine (a) the primary current flowing and (b) the power dissipated in the load resistor.

//initializing the variables:
V1 = 220; // in Volts
V2 = 1760; // in Volts
V = 220; // in Volts
RL = 1280; // in Ohms
R = 2; // in Ohms

//calculation:
//Turns ratio, tr = N1/N2 = V1/V2
tr = V1/V2
//Equivalent input resistance of the transformer,
//R1 = RL*(tr^2)
R1 = RL*(tr^2)
//Total input resistance
Rin = R + R1
// Primary current
I1 = V1/Rin
//For an ideal transformer V1/V2 = I2/I1,
I2 = I1*tr
//Power dissipated in load resistor RL
P = I2*I2*RL

printf("\n\n Result \n\n")
printf("\n (a) primary current flowing is %.0f A", I1)
printf("\n (b)  power dissipated in the load resistor is %.0f W", P)