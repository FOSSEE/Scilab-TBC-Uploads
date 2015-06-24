clc
//initialisation of variables
n= 2 //electrons
R= 8.314 //J/mol K
F= 96493 //coloumb
T= 25 //C
N2= 3.17*10^-6
N1= 6.13*10^-3
//CALCULATIONS
E= -(R*(273.16+T)*2.3026/(n*F))*log10(N2/N1)
//RESULTS
printf (' potential difference = %.5f volt',E)
