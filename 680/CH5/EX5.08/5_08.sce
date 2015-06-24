//Problem 5.08:

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
ppm = ppSO2*1E6

printf("\n\nResult\n\n")
printf("\n ppm of SO2 = %.0f",ppm)