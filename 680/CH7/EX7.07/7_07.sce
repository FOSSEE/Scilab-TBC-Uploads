//Problem 7.07:

//initializing the variables:
n = 1000; // in lb/h
MWCO2 = 44;
T1 = 200; // in deg F
T2 = 3200; // in deg F
a = 6.214;
b = 10.396E-3;
c = -3.545E-6;

//calculation:
T1 = (T1 + 460)/1.8
T2 = (T2 + 460)/1.8
dT = T2 - T1
ndt = n/MWCO2
Q = ndt*1.8*(a*dT +(b/2)*(T2^2 - T1^2) + (c/3)*(T2^3 - T1^3))

printf("\n\nResult\n\n")
printf("\n the heat transfer rate is %.2E Btu/h",Q)