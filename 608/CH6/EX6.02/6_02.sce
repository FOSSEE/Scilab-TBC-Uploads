//Problem 6.02: A direct current of 4 A flows into a previously uncharged 20 μF capacitor for 3 ms. Determine the pd between the plates.

//initializing the variables:
I = 4; // in amperes
C = 20E-6; // in Farad
t = 3E-3; // in sec

//calculation:
Q = I*t
V = Q/C

printf("\n\nResult\n\n")
printf("\n (a)P.d %.0f Volts(V)\n",V)