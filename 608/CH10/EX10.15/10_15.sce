//Problem 10.15: An amplifier has a gain of 14 dB. Its input power is 8 mW. Find its output power.

//initializing the variables:
X = 14; // decibal power ratio in dB
P1 = 0.008; // in Watt

//calculation:
rP = 10^(X/10)
P2 = rP*P1

printf("\n\n Result \n\n")
printf("\n output power P2 = %.3f W\n",P2)