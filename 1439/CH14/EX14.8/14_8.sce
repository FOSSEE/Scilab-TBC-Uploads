clc
//initialisation of variables
E= -0.126 //volt
E1= -0.140 //volt
n=2
R= 0.0591 //volt
//CALCULATIONS
E0= E-E1
K= 10^((E-E1)*n/R)
//RESULTS
printf ('equilibrium constant = %.2f ',K)
