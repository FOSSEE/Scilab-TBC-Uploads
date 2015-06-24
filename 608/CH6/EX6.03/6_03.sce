//Problem 6.03:A 5 μF capacitor is charged so that the pd between its plates is 800 V. Calculate how long the capacitor can provide an average discharge current of 2 mA.

//initializing the variables:
I = 2E-3; // in amperes
C = 5E-6; // in Farad
V = 800; // in volts

//calculation:
Q = C*V
t = Q/I

printf("\n\nResult\n\n")
printf("\n capacitor can provide an average discharge current of 2mA for %.0f Sec\n",t)