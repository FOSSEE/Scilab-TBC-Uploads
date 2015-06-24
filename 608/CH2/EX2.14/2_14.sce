//Problem 2.14: A 12 V battery is connected across a load having a resistance of 40ohms. Determine the current flowing in the load, the power consumed and the energy dissipated in 2 minutes.

//initializing the variables:
V = 12; // in Volts
R = 40; // in ohms
t = 120; // in sec

//calculation:
I = V/R
P = I*V
E = P*t

printf("\n\nResult\n\n")
printf("\nCurrent(I): %.1f Ampere(A)",I)
printf("\nPower(P): %.1f Watt(W)",P)
printf("\nEnergy(E): %.0f Joule(J)\n",E)