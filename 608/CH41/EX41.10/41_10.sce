//Problem 41.10: The attenuator shown in Figure 41.15 feeds a matched load. Determine (a) the characteristic impedance R0, and (b) the insertion loss in decibels.

//initializing the variables:
R1 = 300; // in ohm
R2 = 450; // in ohm
I1 = 1; // in ampere (lets say)

//calculation:
//the characteristic impedance of a symmetric T-pad attenuator is given by
R0 = (R1^2 + 2*R1*R2)^0.5
//By current division
//current I2
I2 = (R2/(R2 + R1+ R0))*I1
ri = I1/I2; // ratio of currents
//insertion loss
il = 20*log10(ri)

printf("\n\n Result \n\n")
printf("\n the characteristic impedance is %.0f ohm",R0)
printf("\n insertion loss is %.2f dB",il)