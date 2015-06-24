//Problem 20.24: An a.c. source of 24 V and internal resistance 15 kohm is matched to a load by a 25:1 ideal transformer. Determine (a) the value of the load resistance and (b) the power dissipated in the load.

//initializing the variables:
tr = 25; // teurn ratio
V = 24; // in Volts
R1 = 15000; // in Ohms
Rin = 15000; // in ohms

//calculation:
//Turns ratio, tr = N1/N2 = V1/V2
//For maximum power transfer R1 needs to be equal to 15 kohm
RL = R1/(tr^2)
//The total input resistance when the source is connected to the matching transformer is
Rt = Rin + R1
//Primary current,
I1 = V/Rt
//N1/N2 = I2/I1
I2 = I1*tr
//Power dissipated in load resistor RL
P = I2*I2*RL

printf("\n\n Result \n\n")
printf("\n (a) the load resistance is %.0f ohm", RL)
printf("\n (b)  power dissipated in the load resistor is %.2E W", P)