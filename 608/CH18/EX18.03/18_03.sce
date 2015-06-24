//Problem 18.03: A differential amplifier has an open-loop voltage gain of 120 and a common input signal of 3.0 V to both terminals. An output signal of 24 mV results. Calculate the common-mode gain and the CMRR.

//initializing the variables:
Vg = 120; // differential voltage gain 
Vi = 3; // in Volts
Vo = 0.024; // in Volts

//calculation:
CMG = Vo/Vi
CMRR = 20*log10(Vg/CMG)

printf("\n\n Result \n\n")
printf("\n common-mode gain is %.3f and CMRR is %.2f dB",CMG, CMRR)