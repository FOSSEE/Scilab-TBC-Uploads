//Problem 2.04: 

//initializing the variables:
V = 55; // in gal
W = 20; // in lb
AWH = 1.008; // in lb/lbmol
AWO = 15.999; // in lb/lbmol
Na = 6.023E23; // molecules/gmol

//calculation:
MW = 2*AWH + AWO
pmw = W/MW
gmw = W*454/MW
nm = gmw*Na

printf("\n\nResult\n\n")
printf("\n it contain %.2f lbmol of water\n",pmw)
printf("\n it contain %.1f gmol of water\n",gmw)
printf("\n it contain %.3E molecules of water\n",nm)
