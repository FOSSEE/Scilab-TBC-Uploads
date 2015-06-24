//Problem 3.06: The resistance of 1.5 km of wire of cross-sectional area 0.17 mm2 is 150 ohms. Determine the resistivity of the wire.

//initializing the variables:
R = 150; // in ohms
L = 1500; // in m
A = 0.17E-6; // in m2

//calculation:
p = R*A/L

printf("\n\nResult\n\n")
printf("\nresistivity %.3E Ohm m\n",p)