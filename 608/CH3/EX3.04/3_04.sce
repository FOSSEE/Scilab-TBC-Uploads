//Problem 3.04: Calculate the resistance of a 2 km length of aluminium overhead power cable if the cross-sectional area of the cable is 100 mm2. Take the resistivity of aluminium to be 0.03E-6 ohm m.

//initializing the variables:
A = 100E-6; // in m2
L = 2000; // in m
p = 0.03E-6; // in ohm m

//calculation:
R = p*L/A

printf("\n\nResult\n\n")
printf("\nResistance %.1f Ohms\n",R)
