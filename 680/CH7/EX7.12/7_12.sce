//Problem 7.12:

//initializing the variables:
T = 1000; // in K
a = 0.4687;
b = 9.4870E-2;
c = -1*0.5553E-4;
d = 0.02284E-6;

//calculation:
Cp0 = a + b*T + c*T^2 + d*T^3

printf("\n\nResult\n\n")
printf("\n the heat capacity is %.2f Btu/lbmol.degR",Cp0)