//Problem 13.07:

//initializing the variables:
DG0fO2 = 0; // cal/gmol  
DG0fCO = -32781; // cal/gmol
DG0fCO2 = -94258; // cal/gmol
Tk = 298; // in K
R = 1.987; // cal/gmol.K
 
//calculation:
DG0 = DG0fCO - 0.5*DG0fO2 - DG0fCO2
K = %e^(-1*DG0/(R*Tk))

printf("\n\nResult\n\n")
printf("\n chemical reaction equilibrium constant K is %.2E",K)