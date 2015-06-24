//Problem 2.10: An electric kettle has a resistance of 30. What current will flow when it is connected to a 240 V supply? Find also the power rating of the kettle.

//initializing the variables:
V = 240; // in Volts
R = 30; // in ohms

//calculation:
I = V/R
P = V*I

printf("\n\nResult\n\n")
printf("\nCurrent(I): %.0f Ampere(A)",I)
printf("\nPower(P): %.0f Watt(W)\n",P)