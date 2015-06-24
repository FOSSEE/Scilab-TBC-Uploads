//Problem 3.05:

//initializing the variables:
Vsp = 10.58; // in ft3/lb
Pa = 14.7; // in psia
T = 70; // in °F
R = 10.73; // in ft^3.psi/lbmol.°R

//calculation:
MW = R*(460 + T)/(Vsp*Pa)

printf("\n\nResult\n\n")
printf("\n the molecular weight of the gas is %.2f lb/lbmol",MW)