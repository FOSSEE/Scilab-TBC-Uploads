clc
//Initialization of variables
disp("From table 13.4 ")
logKfwater=40.04724
logKfH2=0
logKfO2=0
//calculations
logK=logKfwater-logKfH2-0.5*logKfO2
K=10^logK
//results
printf("Equilibrium constant = %.4e",K)
