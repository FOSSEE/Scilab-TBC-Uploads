//Problem 7.02:

//initializing the variables:
H200 = 1170; // in Btu/lbmol
H2000 = 14970; // in Btu/lbmol
n = 20000; // in scfm

//calculation:
ndt = n*1/379
Q = ndt*(H2000 - H200)

printf("\n\nResult\n\n")
printf("\n the heat transfer rate is %.2E Btu/min",Q)