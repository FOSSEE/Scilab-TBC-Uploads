clc
//Initialization of variables
ER=0.52 //V
EL=0.15 //V
//calculations
E=ER-EL
lnK=E/(25.69*10^-3)
K=exp(lnK)
//results
printf("Equilbrum constant K= %.1e",K)
