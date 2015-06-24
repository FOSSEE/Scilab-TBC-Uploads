//Problem 8.05:

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
dpdT = (P5 - P1)/(T5 - T1)
dpdT13 = (P3 - P1)/(T3 - T1)
dpdT35 = (P5 - P3)/(T5 - T3)
dpdTav = (dpdT13+dpdT35)/2

printf("\n\nResult\n\n")
printf("\n the p` vs T derivative is %.3f",dpdTav)
