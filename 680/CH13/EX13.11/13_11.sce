//Problem 13.11:

//initializing the variables:
A = 0.229E-3;
B = 7340;
T = 298; // in K
R = 1.99; // in cal/gmol.K

//calculation:
//The following two results are provided from Illustrative Example 13.4:
DG0298 = -9079 // in cal/gmol
DH0298 = -13672 // cal/gmol
//Employ Equation
//lnK = -DH0/RT + (Da/R)*lnT + (Db/2R)*T + (Dr/6R)*T^-2 + I
//Next, DH0 and I must be determined. 
//DH0T = DH0298 + int(298,T)(DCpdT)
//For heat capacities of the form 
//Cp = a + bT + cT^-2
//Table 7.4 can be employed to generate the following terms:
Da = (7.30 + 8.85) - [(2*6.27 + 0.5*7.16)]
Db = 2.46E-3 + 0.16E-3 - [2*1.24E-3 + 0.5*1.0E-3]
Dc = 0.0 - 0.68E5 - [2*0.30E5 + 0.5*(-0.4E5)]
//From this, Equation then becomes:
//DH0T = DH0298 + int(298,T)[Da + (Db)T + (Dc)T^-2] dT
//or
//DH0T = DH0298 + Da(T - 298) + (1/2)*Db[T^2 - (298)^2] - Dc(1/T - 1/298)
//Combining the constant terms into DH0 (as in Chapter 10) yields the following:
//DH0T = DH0 + (Da)T + (1/2)*(Db)T^2 -(Dc)T6-1
//where
DH0 = DH0298 - 298*Da - (1/2)*[(298)^2]*Db + (1/298)*Dc
//From Equation (13.16)
lnK = -1*DG0298/(R*T)
//Therefore,
I = lnK - DH0/(R*T) - Da/R*log(T) + Db/(2*R)*T + Dc/(2*R)*T^-2
//The final form of the equation for K is
//ln(K) = 7048.7/T + (0.0151)*lnT - (9.06E-5)*T - (2.714E4)*T^-2 - 8.09

printf("\n\nResult\n\n")
printf("\n The final form of the equation for K is \n ln(K) = (%.1f)/T + (%.4f)*lnT - (%.2E)*T - (%.3E)*T^-2 - 8.09",-1*DH0/1.99, Da/1.99, abs(Db)/(2*1.99), abs(Dc)/(2*1.99))
