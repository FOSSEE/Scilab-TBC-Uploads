clc
//Initialization of variables
d=3.5*10^-10 //m
n=2.45*10^25
//calculations
sig=%pi*d^2
lambda=1/(sqrt(2) *sig*n) 
frac=exp(-2)
//results
printf("Mean free path = %.2e m",lambda)
printf("\n fraction of molecules = %.3f",frac)
