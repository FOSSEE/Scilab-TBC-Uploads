//Problem 7.03:

//initializing the variables:
H200 = 1170; // in Btu/lbmol
H2000 = 14970; // in Btu/lbmol
n = 20000; // in scfm
Cpav = 7.53; // in Btu/lbmol
T1 = 200; // in deg F
T2 = 2000; // in deg F

//calculation:
dT = T2 - T1
ndt = n*1/379
Q = ndt*Cpav*dT

printf("\n\nResult\n\n")
printf("\n the heat transfer rate is %.2E Btu/min",Q)