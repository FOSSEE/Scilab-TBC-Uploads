//Problem 8.02:

//initializing the variables:
T = 0; // in deg C
A = 16.65;
B = 2940;
C = -35.93;

//calculation:
T = T + 273
P = %e^(A - B/(T + C))

printf("\n\nResult\n\n")
printf("\n the vapor pressure is %.2f mm of Hg",P)