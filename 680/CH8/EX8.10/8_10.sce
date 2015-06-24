//Problem 8.10:

//initializing the variables:
Tw = 60; // in deg F
mdt1 = 1000; // in lb/h
Pw = 1; // in atm
Ps = 40; // in atm
Ts = 1000; // in deg F
Pd = 20; // in atm
Td = 600; // in deg F
H40 = 1572; // in Btu/lb
H20 = 1316; // in Btu/lb
H1 = 1151; // in Btu/lb
Ht60 = 28.1; // in Btu/lb

//calculation:
dHv = mdt1*(H1 - Ht60)
mdt2 = dHv/(H40 - H20)

printf("\n\nResult\n\n")
printf("\n mass flowrate of the utility steam required is %.0f lb/h",mdt2)