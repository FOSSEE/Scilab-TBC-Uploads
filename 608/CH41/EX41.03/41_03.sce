//Problem 41.03: An amplifier has a gain of 15 dB. If the input power is 12 mW, determine the output power.

//initializing the variables:
gain = 1.5; // in dB
Pi = 0.012; // in Watt

//calculation:
//output power
Po = Pi*10^gain

printf("\n\n Result \n\n")
printf("\noutput power is %.4f W",Po)