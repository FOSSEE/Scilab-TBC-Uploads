//Problem 6.17: A capacitor is charged with 10 mC. If the energystored is 1.2 J find (a) the voltage and (b) the capacitance.

//initializing the variables:
W = 1.2; // in Joules
Q = 10E-3; // in Coulomb

//calculation:
V = 2*W/Q
C = Q/V

printf("\n\nResult\n\n")
printf("\n (a)P.d %.0f V",V)
printf("\n (b)Capacitance %.2E F\n",C)