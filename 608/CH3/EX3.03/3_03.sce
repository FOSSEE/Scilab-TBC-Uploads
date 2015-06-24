//Problem 3.03: A wire of length 8 m and cross-sectional area 3 mm2 has a resistance of 0.16 ohms. If the wire is drawn out until its crosssectional area is 1 mm2, determine the resistance of the wire.

//initializing the variables:
R = 0.16; // in ohms
A = 3; // in mm2
L = 8; // in m
A1 = 1; // in mm2

//calculation:
L1 = L*3
R1 = R*A*L1/(A1*L)

printf("\n\nResult\n\n")
printf("\nResistance %.2f Ohms\n",R1)
