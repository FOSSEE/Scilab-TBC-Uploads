//Problem 7.06:

//initializing the variables:
n = 1000; // in lb/h
MWCO2 = 44;
T1 = 200; // in deg F
T2 = 3200; // in deg F
a = 10.57;
b = 2.10E-3;
c = -1*2.06E5;

//calculation:
T1 = (T1 + 460)/1.8
T2 = (T2 + 460)/1.8
dT = T2 - T1
ndt = n/MWCO2
Q = ndt*1.8*(a*dT +(b/2)*(T2^2 - T1^2) + c*dT/(T2*T1))

printf("\n\nResult\n\n")
printf("\n the heat transfer rate is %.2E Btu/h",Q)