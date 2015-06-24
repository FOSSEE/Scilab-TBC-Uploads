//Problem 41.12: A symmetrical pi-attenuator pad has a series arm of resistance 1000 ohm and shunt arms each of 500ohm . Determine (a) its characteristic impedance, and (b) the insertion loss (in decibels) when feeding a matched load..

//initializing the variables:
R1 = 1000; // in ohm
R2 = 500; // in ohm
I1 = 1; // in amperes (lets say)

//calculation:
//characteristic impedance of a symmetrical attenuator
R0 = (R1*(R2^2)/(R1 + 2*R2))^0.5
//current Ix
Ix = (R2/(R2 + R1 + (R2*R0/(R2 + R0))))*I1
//current I2
I2 = (R2/(R2 + R0))*Ix
ri = I1/I2; // retio of currents
//insertion loss 
il = 20*log10(ri)

printf("\n\n Result \n\n")
printf("\n characteristic impedance is %.0f ohm",R0)
printf("\n insertion loss is %.2f dB",il)