clc
//initialisation of variables
G1= -7800 //cal
G2= -24600 //cal
G3= -39700 //cal
R= 1.987 //cal/mol K
T= 25 //C
//CALCULATIONS
G= G1+G2-G3
Ksp= 10^(-G/(2.303*R*(273.2+T)))
//RESULTS
printf (' solubility product constant = % 1e  ',Ksp)
