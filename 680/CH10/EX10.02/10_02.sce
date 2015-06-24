//Problem 10.02:

//initializing the variables:
DH0no = 21570; // in cal/gmol
DH0h2o = -68317; // in cal/gmol
DH0c3h8 = -24820; // in cal/gmol
DH0ch4 = -17889; // in cal/gmol
DH0c2h4= 12496; // in cal/gmol
DH0no2 = 7930; // in cal/gmol
DH0hno3 = -41404; // in cal/gmol
T = 298; // in K

//calculation:
DH02981 = 2*DH0no
DH02982 = DH0ch4 + DH0c2h4 - DH0c3h8
DH02983 = DH0no + 2*DH0hno3 - 3*DH0no2 - DH0h2o

printf("\n\nResult\n\n")
printf("\n Standard heat of reaction 1 is %.0fcal/gmol N2 of reaction 2 is %.0f cal/gmol C3H8 and of rection 3 is %.0f cal/gmol H2O ",DH02981, DH02982, DH02983)