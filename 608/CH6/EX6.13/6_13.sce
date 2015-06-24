//Problem 6.13: Capacitances of 3 μF, 6 μF and 12 μF are connected in series across a 350 V supply. Calculate (a) the equivalent circuit capacitance, (b) the charge on each capacitor and (c) the pd across each capacitor.

//initializing the variables:
C1 = 3E-6; // in Farads
C2 = 6E-6; // in Farads
C3 = 12E-6; // in Farads
Vt = 350; // in Volts

//calculation:
// in series
Cs = 1/[(1/C1) + (1/C2) + (1/C3)]
Qt = Vt*Cs
V1 = Qt/C1
V2 = Qt/C2
V3 = Qt/C3

printf("\n\nResult\n\n")
printf("\n (a)Equivalent Capacitance in Series %.2E F",Cs)
printf("\n (b)Charge on each capacitors (C1, C2, C3) %.2E C",Qt)
printf("\n (b)P.d Across each capacitors (C1, C2, C3) %.0f V, %.0f V, %.0f V respectively",V1, V2, V3)