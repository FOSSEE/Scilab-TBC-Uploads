//Problem 13.10:

//initializing the variables:
Tk = 1394.3; // in K
 
//calculation:
//from problem 13.09
//lnK = (-33722/T) + 1.560*lnT - 0.00181*T + 2.42E-7*T^2 + 0.4509
K = %e^((-1*33722)/Tk + 1.560*log(Tk) - 0.00181*Tk + 2.42E-7*Tk^2 + 0.4509)

printf("\n\nResult\n\n")
printf("\n chemical reaction equilibrium constant K is %.2E",K)