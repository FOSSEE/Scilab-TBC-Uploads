//Problem 8.06: A coil is wound on a rectangular former of width 24 mm and length 30 mm. The former is pivoted about an axis passing through the middle of the two shorter sides and is placed in a uniform magnetic field of flux density 0.8 T, the axis being perpendicular to the field. If the coil carries a current of 50 mA, determine the force on each coil side (a) for a single-turn coil, (b) for a coil wound with 300 turns.

//initializing the variables:
N1 = 1; // for a single-turn coil
N2 = 300; // no. of turns
b = 0.024; // in m
B = 0.8; // in Tesla
I = 0.05; // in Amperes
l = 0.030; // in m
u0 = 4*%pi*1E-7;

//calculation:
//For a single-turn coil,
F1 = N1*B*I*l
//for a coil wound with 300 turns.
F2 = N2*B*I*l

printf("\n\nResult\n\n")
printf("\n (a)For a single-turn coil, force on each coil side = %.4f N",F1)
printf("\n (b)For a 300-turn coil, force on each coil side = %.2f N",F2)