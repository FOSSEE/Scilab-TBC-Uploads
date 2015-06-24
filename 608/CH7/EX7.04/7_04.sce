//Problem 7.04: A flux density of 1.2 T is produced in a piece of cast steel by a magnetizing force of 1250 A/m. Find the relative permeability of the steel under these conditions.

//initializing the variables:
B = 1.2; // in Tesla
H = 1250; // in A/m
Pi = 3.14;
u0 = 4*Pi*1E-7;

//calculation:
ur = B/(u0*H)

printf("\n\nResult\n\n")
printf("\n relative permeability of the steel = %.0f \n",ur)