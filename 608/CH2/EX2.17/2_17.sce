//Problem 2.17: An electric heater consumes 3.6 MJ when connected to a 250 V supply for 40 minutes. Find the power rating of the heater and the current taken from the supply.

//initializing the variables:
V = 250; // in Volts
E = 3.6E6; // energy in J
t = 2400; // in sec

//calculation:
P = E/t
I = P/V

printf("\n\nResult\n\n")
printf("\nPower(P): %.0f Watt(W)",P)
printf("\nCurrent(I): %.0f Ampere(A)\n",I)