//Problem 6.12: Capacitances of 1 μF, 3 μF, 5 μF and 6 μF are connected in parallel to a direct voltage supply of 100 V. Determine (a) the equivalent circuit capacitance, (b) the total charge and (c) the charge on each capacitor.

//initializing the variables:
C1 = 1E-6; // in Farads
C2 = 3E-6; // in Farads
C3 = 5E-6; // in Farads
C4 = 6E-6; // in Farads
Vt = 100; // in Volts

//calculation:
// in Parallel
Cp = C1 + C2 + C3 + C4
Qt = Vt*Cp
Q1 = C1*Vt
Q2 = C2*Vt
Q3 = C3*Vt
Q4 = C4*Vt

printf("\n\nResult\n\n")
printf("\n (a)Equivalent Capacitance in Parallel %.2E F",Cp)
printf("\n (b)Total charge %.2E C",Qt)
printf("\n (c)Charge on each capacitors (C1, C2, C3, C4) %.2E C, %.2E C, %.2E C, %.2E C respectively",Q1,Q2,Q3,Q4)