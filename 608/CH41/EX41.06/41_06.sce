//Problem 41.06: A symmetrical pi-attenuator pad has a series arm of 500 ohm resistance and each shunt arm of 1 kohm resistance. Determine (a) the characteristic impedance, and (b) the attenuation (in dB) produced by the pad.

//initializing the variables:
R1 = 500; // in ohm
R2 = 1000; // in ohm
I1 = 1; // in ampere (lets say)

//calculation:
// for symmetrical pi-attenuator section
//characteristic impedance, R0
R0 = (R1*(R2^2)/(R1 + 2*R2))^0.5
//current Ix
Ix = (R2/(R2 + R1 + (R2*R0/(R2 + R0))))*I1
//current I2
I2 = (R2/(R2 + R0))*Ix
ri = I1/I2; // retio of currents
//attenuation
attn = 20*log10(ri)

printf("\n\n Result \n\n")
printf("\n the characteristic impedance is %.0f ohm",R0)
printf("\n attenuation is %.2f dB",attn)