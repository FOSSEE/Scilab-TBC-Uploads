//Problem 6.10:

//initializing the variables:
T1 = 540; // in deg F
T0 = 300; // in deg F
T2 = 300; // in deg F
T3 = 60; // in deg F
m = 1;
Cp = 1;

//calculation:
dSh = m*Cp*log((T0 + 460)/(T1 + 460))
dSc = m*Cp*log((T2 + 460)/(T3 + 460))
//for one exchanger
dSa = dSh + dSc
//there are two similar exchangers
dSb = dSa
dStot = dSa + dSb

printf("\n\nResult\n\n")
printf("\n total entropy change is %.4f Btu/deg R",dStot)