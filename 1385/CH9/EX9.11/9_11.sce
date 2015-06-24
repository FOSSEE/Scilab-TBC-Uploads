clc
//initialisation of variables
c= 0.050 //M
Kb= 1.8*10^-5
T= 25 //C
Kw= 10^-14
//CALCULATIONS
C= sqrt(Kw*c/Kb)
//RESULTS
printf (' concentration of hydronium ion = %.1e mol per litre',C)
