//Problem 6.11:

//initializing the variables:
T1 = 540; // in deg F
T0 = 300; // in deg F
T2 = 300; // in deg F
T3 = 60; // in deg F
TDDF = 0;
m = 1;
Cp = 1;

//calculation:
dShc = m*Cp*log((T0 + 460)/(T1 + 460))
dScc = m*Cp*log((T2 + 460)/(T3 + 460))
//for one exchanger
dSc = dShc + dScc
//exchanger D
dSd = 0
dStot = dSc + dSd

printf("\n\nResult\n\n")
printf("\n total entropy change is %.4f Btu/deg R",dStot)