//Problem 41.02: 5% of the power supplied to a cable appears at the output terminals. Determine the attenuation in decibels.

//initializing the variables:
rp = 0.05; // power ratio P2/P1

//calculation:
//power ratio in decibels
rpd = 10*log10(rp)

printf("\n\n Result \n\n")
printf("\nthe attenuation is %.0f dB",abs(rpd))