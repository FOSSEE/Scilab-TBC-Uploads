//Problem 13.14:

//initializing the variables:
T = 600; // in K
P = 1; // atm
K = 1.5E32; 
DH0 = 103525; // cal/gmol O2
IR = 3.5
aC2H4 = 2.830
aO2 = 6.148
bC2H4 = 28.601E-3
bO2 = 3.102E-3
rC2H4 = -8.726E-6
rO2 = -0.923E-6
DH0C2H4O = -39760; // cal/gmol O2
DH0C2H4 = 12496; // cal/gmol O2
R = 1.987; // cal/gmol.K

//calculation:
DH0 = 2*DH0C2H4O - 2*DH0C2H4 // in cal/gmol O2 reacted
DG0298 = -96484; // in cal/gmol O2 reacted
DH0 = -103525; // in cal/gmol
//Write the equation for DH0T at 298K in terms of DH0, Da, Db, and Dr:
//DH0T = DH0 + Da*T + (Db/2)*T^2 + (Dr/3)*T^3
//
//-987 = 298*Da + 44402*Db + 8.82E6*Dr
//
//Write the equation for DG0T at 298K in terms of DH0, Da, Db, Dr, and IR. At T = 298K and IR = 3.5,
//DG0T = DH0 -Da*T*lnT - (Db/2)*T^2 - (Dr/6)*T^3 - IRT
//
//-8084 = 1698*Da + 44402*Db + 4.41E6*Dr
//
DG0600 = -1*R*T*log(K)
//at T = 600
//
//-17275 = 3839*Da + 1.8E5*Db + 3.6E7*Dr
//
//solving these we get
Da = -5.046
Db = 1.017E-2
Dr = 7.406E-6
aC2H4O = (Da + 2*aC2H4 + aO2)/2
bC2H4O = (Db + 2*bC2H4 + bO2)/2
rC2H4O = (Dr + 2*rC2H4 + rO2)/2

printf("\n\nResult\n\n")
printf("\n theoretical values: a = %.3f, b = %.2E and r = %.2E \n Experimental values: \n\ta = 3.364\n\tb = 35.722E-3\n\tr = -12.236E-6 \n\tThe agreement for a and b is excellent; the result is reasonable for r \n in view of its sensitivity to T^3.",aC2H4O, bC2H4O, rC2H4O)
