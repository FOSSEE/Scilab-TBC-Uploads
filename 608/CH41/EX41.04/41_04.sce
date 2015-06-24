//Problem 41.04: The current output of an attenuator is 50 mA. If the current ratio of the attenuator is 1.32 Np, determine (a) the current input and (b) the current ratio expressed in decibels. Assume that the input and load resistances of the attenuator are equal.

//initializing the variables:
I2 = 0.05; // in Amperes
rin = 1.32; // in Np

//calculation:
//current input, I1
I1 = I2*%e^(rin)
//current ratio in decibels
rid = 20*log10(I2/I1)

printf("\n\n Result \n\n")
printf("\ncurrent input, I1 is %.4f A",I1)
printf("\ncurrent ratio in decibels is %.2f dB",rid)