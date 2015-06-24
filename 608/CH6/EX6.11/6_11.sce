//Problem 6.11: What capacitance must be connected in series with a 30 μF capacitor for the equivalent capacitance to be 12 μF?

//initializing the variables:
C1 = 30E-6; // in Farads
Cs = 12E-6; // in Farads

//calculation:
// in Series
C2 = 1/[(1/Cs) - (1/C1)]

printf("\n\nResult\n\n")
printf("\n (a)Capacitance in series %.2E F\n",C2)