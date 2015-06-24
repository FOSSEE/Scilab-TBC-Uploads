//Problem 10.14: 6% of the power supplied to a cable appears at the output terminals. Determine the power loss in decibels.

//initializing the variables:
rP = 0.06; // power ratios rP = P2/P1

//calculation:
X = 10*log10(rP)

printf("\n\n Result \n\n")
printf("\n decibel Power ratios = %.2f dB\n",X)