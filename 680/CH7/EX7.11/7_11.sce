//Problem 7.11:

//initializing the variables:
n = 1200; // in lb/h
MWCaO = 56;
T1 = 42; // in deg F
T2 = 68; // in deg F
a = 11.67;
b = 1.08E-3;
c = -1*1.565E5;

//calculation:
T1 = (T1 + 460)/1.8
T2 = (T2 + 460)/1.8
dT = T2 - T1
ndt = n/MWCaO
Q = ndt*(a*dT +(b)*(T2^2 - T1^2) + (c)*dT/(T1*T2))*1.8

printf("\n\nResult\n\n")
printf("\n the heat transfer rate is %.0f Btu/h",Q)