clc
//Initialization of variables
ER=-0.21 //V
EL=-0.6 //V
//calculations
E=ER-EL
lnK=2*E/(25.69*10^-3)
K=exp(lnK)
//results
printf("Equilibrium constant for the reaction = %.1e",K)
