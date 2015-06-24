//Problem 11.06:

//initializing the variables:
T1 = 25; // in deg C
pa = 111; // in mm of Hg
pb = 92; // in mm of hg
P = 100; // in mm of hg

//calculation:
xa = (P - pb)/(pa - pb)
ya = xa*pa/P


printf("\n\nResult\n\n")
printf("\nthe composition of the liquid phase is %.3f  and of vapour phase %.3f",xa, ya)