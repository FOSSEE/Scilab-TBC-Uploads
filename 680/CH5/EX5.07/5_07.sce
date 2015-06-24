//Problem 5.07:

//initializing the variables:
P = 1; // in atm
tm = 68.6;
pS = 0.005;
W = 112.5;
MWS = 32;

//calculation:
wS = pS*W
nS = wS/MWS
perSO2bymol = nS*100/tm
ppSO2 = perSO2bymol/100

printf("\n\nResult\n\n")
printf("\n patial pressures for SO2 = %.2E atm ",ppSO2)