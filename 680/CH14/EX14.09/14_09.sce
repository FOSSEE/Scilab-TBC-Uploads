//Problem 14.09:

//initializing the variables:
P = 1; // in atm
T = 527; // in deg C
R = 1.987;

//calculation:
//DG0T = 53424 - 2.6*T*lnT + 0.0005*T^2  - 5.0*T
Tk = T + 273
DG0527 = 53424 - 2.6*Tk*log(Tk) + 0.0005*Tk^2  - 5.0*Tk
K = %e^(-DG0527/(R*Tk))
Ky = K
e = ((Ky/4)/(1 + Ky/4))^0.5

printf("\n\nResult\n\n")
printf("\n the degree of dissociation is %.2E",e)