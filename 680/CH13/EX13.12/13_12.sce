//Problem 13.12:

//initializing the variables:
Tk = 500; // in K
 
//calculation:
//from problem 13.11
//lnK = (7048.7/T) + 0.0151*lnT - 9.06E-5*T - 2.714E4*T^-2 - 8.09
K = %e^((7048.7/Tk) + 0.0151*log(Tk) - 9.06E-5*Tk - 2.714E4/Tk^2 - 8.09)

printf("\n\nResult\n\n")
printf("\n chemical reaction equilibrium constant K is %.0f",K)