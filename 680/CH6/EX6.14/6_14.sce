//Problem 6.14:

//initializing the variables:
T = 298; // in deg F
na = 1;
nb = 3;
nc = 2;
Sa = 26.3; // in Btu/lbmol deg R
Sb = 21.0; // in Btu/lbmol deg R
Sc = 29.9; // in Btu/lbmol deg R

//calculation:
dS = nc*Sc - nb*Sb - na*Sa

printf("\n\nResult\n\n")
printf("\n entropy change is %.1f Btu/deg R",dS)