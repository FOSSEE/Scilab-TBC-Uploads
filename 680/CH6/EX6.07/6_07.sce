//Problem 6.07:

//initializing the variables:
n = 5; // in lbmol
T1 = 100; // in degrees F
P1 = 1; // in atm
T2 = 400; // in degrees F
P2 = 10; // in atm
Cpg = 5; // Btu/lb.degF
R = 1.987;

//calculation:
T1 = T1 + 460
T2 = T2 + 460
dS = n*R*log(P1/P2) + n*Cpg*log(T2/T1)
dSt = 0
dSsur = dSt - dS

printf("\n\nResult\n\n")
printf("\n the entropy for the surrounding is %.2f Btu/deg R",dSsur)