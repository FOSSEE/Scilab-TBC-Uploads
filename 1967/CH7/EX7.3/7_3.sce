clc
//initialisation of variables
clear
R= 1.98 //cal//mol K
x= 0.75
n= 9
//CALCULATIONS
dS= -R*(n*(x/n)*log(x/n)+(1-x)*log(1-x))
//RESULTS
printf ('Entropy = %.2f cal deg^-1 mole^-1',dS)
