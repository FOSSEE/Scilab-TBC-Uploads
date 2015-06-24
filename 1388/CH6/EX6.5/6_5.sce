clc
//initialisation of variables
G= 2054.7 //cal
R= 1.9872 //cal/mol K
T= 298.16 //K
//CALCULATIONS
P= 10^(-G/(2.303*T*R))
//RESULTS
printf (' pressure = %.5f atm',P)
