//Problem 6.12:

//initializing the variables:
T1 = 540; // in deg F
T0 = 300; // in deg F
T2 = 180; // in deg F
T3 = 60; // in deg F
m1 = 1;
m2 = 2;
Cp = 1;

//calculation:
dSh = m1*Cp*log((T0 + 460)/(T1 + 460))
dSc = m2*Cp*log((T2 + 460)/(T3 + 460))
//for one exchanger
dSe = dSh + dSc
//exchanger F
dSf = dSe
dStot = dSe + dSf

printf("\n\nResult\n\n")
printf("\n total entropy change is %.4f Btu/deg R",dStot)