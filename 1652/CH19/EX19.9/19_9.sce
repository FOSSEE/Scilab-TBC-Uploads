clc
//Initialization of variables
lam=3000*10^-8 //cm
yield=0.420
Et=70000 //cal
//calculations
E=2.8593/lam
n=yield*Et/E
//results
printf("Amount of reactant disappeared = %.3f mol",n)
