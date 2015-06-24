//Problem 3.02: A piece of wire of cross-sectional area 2 mm2 has a resistance of 300 ohms. Find (a) the resistance of a wire of the same length and material if the cross-sectional area is 5 mm2, (b) the cross-sectional area of a wire of the same length and material of resistance 750 ohms. 

//initializing the variables:
R = 300; // in ohms
A = 2; // in mm2
A1 = 5; // in mm2
R2 = 750; // in ohms

//calculation:
R1 = R*A/A1
A2 = R*A/R2

printf("\n\nResult\n\n")
printf("\n(a)Resistance %.0f Ohms",R1)
printf("\n(b)C.S.A: %.1f mm2\n",A2)