//Problem 8.06:

//initializing the variables:
Tc = 647; // in K
Tn = 100 + 273; // in K
Pc = 217.6; // in atm
dHe = 970; // in Btu/lb

//calculation:
Tm = Tn/Tc
dH = 2.17*Tn*((log(Pc)) - 1.0)/(0.930 - Tm)
dHn = dH*454/(252*18)
perdiff = (dHn - dHe)*100/dHe

printf("\n\nResult\n\n")
printf("\n the enthalpy of vaporization is %.1f percent",perdiff)