//Problem 8.13:

//initializing the variables:
P =500; // in psig
UHD1 = 10000000; // in Btu/h
UHD2 = 8000000; // in Btu/h
UHD3 = 12000000; // in Btu/h
UHD4 = 20000000; // in Btu/h
T1 = 250; // in deg F
T2 = 450; // in deg F
T3 = 400; // in deg F
T4 = 300; // in deg F
Ps1 = 75; // in psig
Ps2 = 500; // in psig
Ts1 = 320; // in deg F
Ts2 = 470; // in deg F
dHv1 = 894; // in Btu/lb
dHv2 = 751; // in Btu/lb

//calculation:
mdtb1 = UHD1/dHv2
mdtb2 = UHD2/dHv2
mdtb3 = UHD3/dHv2
mdtb4 = UHD4/dHv2
mdtb = mdtb1 + mdtb2 + mdtb3 + mdtb4

printf("\n\nResult\n\n")
printf("\n steam required is %.0f lb/h",mdtb)