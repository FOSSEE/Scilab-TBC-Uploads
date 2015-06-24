//Problem 13.06:

//initializing the variables:
DG0 = -20000; // in cal/gmol
Tf = 70; // in deg F
R = 1.99; // cal/gmol.K
 
//calculation:
Tk = 273 + 5*(Tf - 32)/9
K = %e^(-1*DG0/(R*Tk))

printf("\n\nResult\n\n")
printf("\n chemical reaction equilibrium constant K is %.2E",K)