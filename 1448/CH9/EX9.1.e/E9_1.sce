clc
//Initialization of variables
lw=34.96 //mS m^2 /mol
la=4.09 //mS m^2 /mol
C=0.010 //M
K=1.65 //mS m^2 /mol
//calculations
lmd=lw+la
alpha=K/lmd
Ka=C*alpha^2
pKa=-log10(Ka)
//results
printf("Acidity constant of the acid = %.2f ",pKa)
