//Problem 32.02:Use the superposition theorem to determine the current in the 4 ohm resistor of the network shown in Figure 32.11.

//initializing the variables:
V1 = 12; // in volts
V2 = 20; // in volts
R1 = 5; // in ohm
R2 = 4; // in ohm
R3 = 2.5; // in ohm
R4 = 6; // in ohm
R5 = 2; // in ohm

//calculation:
//Removing the 20 V source gives the network shown in Figure 32.12.
//Currents I1 and I2 are shown labelled in Figure 32.12
Re1 = (R4*R5/(R4 + R5)) + R3
Re2 = Re1*R2/(Re1  + R2) + R1
I1 = V1/Re2
I2 = (R2/(Re1 + R2))*I1
//Removing the 12 V source from the original network gives the network shown in Figure 32.14.
//Currents I3, I4 and I5 are shown labelled in Figure 32.14.
Re3 = (R1*R2/(R1 + R2)) + R3
Re4 = Re3*R4/(Re3 + R4) + R5
I3 = V2/Re4
I4 = (R4/(Re3 + R4))*I3
I5 = (R1/(R1 + R2))*I4
//Superimposing Figure 32.14 on Figure 32.12 shows that the current flowing in the 4 ohm resistor is given by
Ir4 = I5 - I2

printf("\n\n Result \n\n")
printf("\ncurrent in the 4 ohm resistor of the network is %.3f A",Ir4)