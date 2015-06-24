//Problem 10.01:

//initializing the variables:
DH0co2 = -94052; // in cal/gmol
DH0h2o = -57798; // in cal/gmol
DH0ch4 = -17889; // in cal/gmol
DH0o2 = 0; // in cal/gmol
T = 298; // in K

//calculation:
DH0298 = DH0co2 + 2*DH0h2o - 2*DH0o2 - DH0ch4

printf("\n\nResult\n\n")
printf("\n the standard enthalpy of reaction is %.0fcal/gmol",DH0298)