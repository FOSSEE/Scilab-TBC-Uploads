//Problem 6.16: A 12 μF capacitor is required to store 4 J of energy. Find the pd to which the capacitor must be charged.

//initializing the variables:
C = 12E-6; // in Farads
W = 4; // in Joules

//calculation:
V = (2*W/C)^0.5

printf("\n\nResult\n\n")
printf("\n P.d %.1f V\n",V)