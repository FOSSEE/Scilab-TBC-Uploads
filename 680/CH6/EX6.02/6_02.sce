//Problem 6.02:

//initializing the variables:
mc = 20; // in lb
T1 = 100; // in degrees C
T2 = 25; // in Deg C
mw = 6; // in gallons
Cpc = 0.092; // Btu/lb.degF
Cpw = 1.0; // Btu/lb.degF

//calculation:
T = (mc*Cpc*T1 + mw*8.33*Cpw*T2)/(mc*Cpc + mw*8.33*Cpw)
Tk = T + 273
dS = mw*8.33*Cpw*log(Tk/298)

printf("\n\nResult\n\n")
printf("\n the entropy change of the water is %.3f Btu/deg F",dS)