//Problem 8.11:

//initializing the variables:
Ts = 90; // in deg F
Cp = 1; // in Btu/lb.deg F
Cpv = 1030; // in Btu/lb
Tr = 115; // in deg F
D1 = 12000000; // in Btu/h
D2 = 6000000; // in Btu/h
D3 = 23000000; // in Btu/h
D4 = 17000000; // in Btu/h
D5 = 31500000; // in Btu/h
d = 8.32; // in lb/gal

//calculation:
Qdt = D1 + D2 + D3 + D4 + D5
F = Qdt/((Tr - Ts)*Cp)
Fgpm = F/(60*d)

printf("\n\nResult\n\n")
printf("\n total flowrate of cooling water is %.0f gal/min",Fgpm)