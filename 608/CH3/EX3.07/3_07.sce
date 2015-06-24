//Problem 3.07: Determine the resistance of 1200 m of copper cable having a diameter of 12 mm if the resistivity of copper is 1.7E-8 ohm m.

//initializing the variables:
d = 0.012; // in m
L = 1200; // in m
p = 1.7E-8; // in ohm m
pi = 3.14;

//calculation:
A = pi*d*d/4
R = p*L/A

printf("\n\nResult\n\n")
printf("\nresistance %.3f Ohm\n",R)