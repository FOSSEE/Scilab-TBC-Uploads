//Problem 14.07:

//initializing the variables:
xCO2 = 0.0314;
xO2 = 0.0584;
P = 1; // in atm
T = 250; // in deg F
K = 1.015E-33;

//calculation:
yCO = xCO2*K/xO2^0.5
yCOppm = yCO*1E6

printf("\n\nResult\n\n")
printf("\n the mole fraction of CO is %.2E and in ppm %.2E ppm",yCO, yCOppm)