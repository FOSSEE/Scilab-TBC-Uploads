//Problem 14.12:

//initializing the variables:
T = 500; // in K
R = 1.987;

//calculation:
//DG0T = -13600 + 4.16*T //cal/gmol of N2O4
DG0500 = -13600 + 4.16*T
K = %e^(-1*DG0500/(R*T))
e = ((K/4)/(1 + K/4))^0.5

printf("\n\nResult\n\n")
printf("\n conversion is %.2f percent",e*100)