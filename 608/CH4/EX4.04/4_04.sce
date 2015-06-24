//Problem 4.04: Ten 1.5 V cells, each having an internal resistance of 0.2 ohms, are connected in series to a load of 58 ohms . Determine(a) the current flowing in the circuit and (b) the p.d. at the battery terminals.

//initializing the variables:
r = 0.2; // in ohms
n = 10; // no. of cells
e = 1.5; // in volts
R = 58; // in ohms

//calculation:
es = n*e
rs = n*r
I = es/(rs + R)
pd = es - (I*rs)

printf("\n\nResult\n\n")
printf("\n (a)Current %.2f Amperes(A)",I)
printf("\n (b)p.d %.1f Volts(V)\n",pd)