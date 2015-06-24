clc 
//initialisation of variables
R= 1.987 //cal mol^-1 K^-1
T= 0 //C
V1= 22.4 //lit
V2= 2.24 //lit
//CALCULATIONS
wrev= 2.303*R*(273.1+T)*log10(V1/V2)
//RESULTS
printf ('maximum work done= % f cal ',wrev)
