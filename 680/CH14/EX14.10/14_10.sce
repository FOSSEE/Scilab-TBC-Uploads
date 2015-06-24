//Problem 14.10:

//initializing the variables:
P = 10; // in atm
T = 527; // in deg C
R = 1.987;
v = 1-2;

//calculation:
//DG0T = 53424 - 2.6*T*lnT + 0.0005*T^2  - 5.0*T
Tk = T + 273
DG0527 = 53424 - 2.6*Tk*log(Tk) + 0.0005*Tk^2  - 5.0*Tk
K = %e^(-DG0527/(R*Tk))
Ky = K*P^v
e = ((Ky/4)/(1 + Ky/4))^0.5

printf("\n\nResult\n\n")
printf("\n the degree of dissociation is %.2E",e)