//Problem 6.09:

//initializing the variables:
H0 = 28; // in Btu/lb
H1 = 1151; // in Btu/lb
Qh = 700; // in Btu/lb
S0 = 0.056; // in Btu/lb deg R
S1 = 1.757; // in Btu/lb deg R
Th = 300; // in deg F
Tc = 60; // in deg F
P1 = 1; // in atm
T1 = 212; // in deg F
T0 = 60; // in deg F


//calculation:
Qc = H1 - H0 - Qh
//the entropy change of the steam
dSs = S0 - S1
dSh = Qh/(Th + 460)
dSc = Qc/(Tc + 460)
dSt = dSs + dSh + dSc

printf("\n\nResult\n\n")
printf("\n total entropy change is %.3f Btu/lb deg R",dSt)