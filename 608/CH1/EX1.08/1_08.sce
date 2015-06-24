//Problem 1.08: An electric heater consumes 1.8 MJ when connected to a 250 V supply for 30 minutes. Find the power rating of the heater and the current taken from the supply.

//initializing the variables:
E = 18E5; // in Joule
V = 250; // in Volts
t = 1800; // in sec

//calculation:
P = E/t
I = P/V

printf("\n\nResult\n\n")
printf("\nPower(P): %.0f Watt(W)",P)
printf("\nCurrent(I): %.0f Ampere(A)\n",I)