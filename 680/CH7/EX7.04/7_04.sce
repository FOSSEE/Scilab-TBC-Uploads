//Problem 7.04:

//initializing the variables:
mdt = 1200; // in lb/min
Cpav = 0.26; // in Btu/lbmol
T1 = 200; // in deg F
T2 = 1200; // in deg F

//calculation:
dT = T2 - T1
Q = mdt*Cpav*dT

printf("\n\nResult\n\n")
printf("\n the heat transfer rate is %.2E Btu/min",Q)