//Problem 14.06:

//initializing the variables:
xCO2 = 0.0314;
xO2 = 0.0584;
P = 1; // in atm
T = 2050; // in deg F
 
//calculation:
//from example 13.10, at 2050 deg F 
K = 9.156E-7
yCO = xCO2*K/xO2^0.5

printf("\n\nResult\n\n")
printf("\n the mole fraction of CO is %.2E",yCO)