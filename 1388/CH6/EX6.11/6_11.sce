clc
//initialisation of variables
m= 10^-2
m1= 10^-22
G= -22.15 //kcal
G1= -5.81 //kcal
G2= 20.6 //kcal
T= 25 //C
R= 1.987 //cal/mol K
//CALCULATIONS
G3= G-(G1+G2)
Ksp= 10^(G3*10^3/(2.303*R*(273+T)))
//RESULTS
printf (' Ksp = %.e ',Ksp)
