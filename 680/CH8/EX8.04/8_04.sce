//Problem 8.04:

//initializing the variables:
T1 = 250; // in deg C
T2 = 260; // in deg C
T3 = 270; // in deg C
T4 = 280; // in deg C
T5 = 290; // in deg C
P1 = 22.01; // in atm
P2 = 24.66; // in atm
P3 = 27.13; // in atm
P4 = 29.79; // in atm
P5 = 32.42; // in atm
vl3 = 0.0408; // in ft3/lb
vg3 = 0.192; // in ft3/lb

//calculation:
dpdT = (P4 - P2)/(T4 - T2)
dv = vg3 - vl3
T3 = T3 + 460
dH = T3*dv*dpdT*14.7*144/778

printf("\n\nResult\n\n")
printf("\n the enthalpy of vaporization is %.2f Btu/lb",dH)