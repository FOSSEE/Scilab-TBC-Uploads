//Problem 10.03:

//initializing the variables:

//calculation:
//From Table 10.1,
//DH0chex = -1,005,570 cal/gmol
//First, write the combustion reaction:
//C6H14 + 9.5O2 ---> 6CO2 + 7H2O(l)
//From Table 10.1, one obtains
DH0fC6H14 = -36960 //cal/gmol
DH0fCO2 = -94052 //cal/gmol
DH0fH2O = -68317 //cal/gmol
//Thus,
//DH0c = E(DH0f,p) - E(DH0f,r) 
DH0c = 6*DH0fCO2 + 7*DH0fH2O - 1*DH0fC6H14
//The calculation process is verified.

printf("\n\nResult\n\n")
printf("\n From Table 10.1 DH0c(n-hexane) = -1,005,570 cal/gmol, we obtains by calculations DH0c = %.0f cal/gmol \n The calculation process is verified.",DH0c)
