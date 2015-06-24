//Problem 41.07: For each of the attenuator networks shown in Figure 41.11, determine (a) the input resistance when the output port is open-circuited, (b) the input resistance when the output port is short-circuited, and (c) the characteristic impedance.

//initializing the variables:
R1 = 15; // in ohm
R2 = 10; // in ohm
R3 = 5; // in ohm

//calculation:
//For the T-network shown in Figure 41.11(i):
Roct = R1 + R2
Rsct = R1 + R1*R2/(R1 + R2)
Rot = (Roct*Rsct)^0.5
//For the Pi-network shown in Figure 41.11(ii):
Rocpi = R3*(R1 + R3)/(R3 + R1 + R3)
Rscpi = R3*R1/(R3 + R1)
Ropi = (R1*(R3^2)/(R1 + 2*R3))^0.5

printf("\n\n Result \n\n")
printf("\n the input resistance when the output port is open-circuited is (a) %.0f ohm (b) %.0f ohm",Roct,Rocpi)
printf("\n the input resistance when the output port is short-circuited is (a) %.0f ohm (b) %.2f ohm",Rsct, Rscpi)
printf("\n the characteristic impedance is (a) %.1f ohm (b) %.2f ohm",Rot, Ropi)