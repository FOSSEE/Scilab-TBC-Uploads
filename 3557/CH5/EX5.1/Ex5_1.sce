//Example 5.1//
k=2.95*10^-4;// kg/(m^-4.s) //At 400 degree Celsius k rises
k1=1.05*10^-8;//kg/(m^-4.s) // The value of k at 300 degree celsius
R=8.314;//J/(mol.K) //universal gas constant
T=673;//K //Kelvin //absolute temperature
T1=573;//K //Kelvin //absolute temperature
a=log(k/k1);// Taking antilog to remove exponential term
//mprintf("a=%e ",a)
c=(1/T)-(1/T1); //subtracting the term
//mprintf("c = %e ",c)
Q=(-(a/c))*R //cross multiplication of the term
mprintf("Q = %e J/mol = 328 kJ/mol",Q)
