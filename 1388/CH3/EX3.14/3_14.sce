clc
//initialisation of variables
H= -68.317 //kcal
H1= -310.615 //kcal
H2= -337.234 //kcal
R= 1.987 //cal/mol^-1 K^-1
T= 298.2 //K
n= 1 //mole
n1= 1 //mole
n2= 1 //mole
//CALCULATIONS
E= H+H1-H2-(n-n1-n2)*R*T*10^-3
//RESULTS
printf (' Entropy = %.3f kcal ',E)
