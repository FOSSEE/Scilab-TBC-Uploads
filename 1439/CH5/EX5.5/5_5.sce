clc 
//initialisation of variables
n= 2 //mole
R= 1.987 //cal K^-1 mole^-1
X1= 0.5 //atm
X2= 0.5 //atm
//CALCULATIONS
S= -2.303*n*R*(X1*log10(X1)+X2*log10(X2))
//RESULTS
printf ('change in entropy= %.2f cal deg^-1 mole^-1',S)
