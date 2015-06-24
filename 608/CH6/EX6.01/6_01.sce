//Problem 6.01:(a) Determine the p.d. across a 4 μF capacitor when charged with 5 mC. (b) Find the charge on a 50 pF capacitor when the voltage applied to it is 2 kV.

//initializing the variables:
C1 = 4E-6; // in Farad
C2 = 50E-12; // in Farad
Q1 = 5E-3; // in Coulomb
V2 = 2000; // in volts

//calculation:
V1 = Q1/C1
Q2 = C2*V2

printf("\n\nResult\n\n")
printf("\n (a)P.d %.0f Volts(V)",V1)
printf("\n (b)Charge(Q) %.2E Coulomb(C)",Q2)