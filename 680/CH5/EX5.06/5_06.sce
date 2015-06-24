//Problem 5.06:

//initializing the variables:
P = 1; // in atm
tm = 68.6

//calculation:
perO2bymol = 7*100/tm
perHClbymol = 1*100/tm
perH2Obymol = 2*100/tm
ppO2 = perO2bymol/100
ppHCl = perHClbymol/100
ppH2O = perH2Obymol/100

printf("\n\nResult\n\n")
printf("\n patial pressures (for O2 = %.3f atm for HCl = %.4f atm and for H2O = %.4f atm)",ppO2, ppHCl, ppH2O)