clc
//Initialization of variables
pKa=4.88
C=0.01 //M
pKw=14
//calculations
pKb=pKw-pKa
Kb=10^(-pKb)
x=(sqrt(C*Kb))
pOH=-log(x)
pH=14-pOH
f=x/C
//results
printf("fraction protonated = %.1e",f)
printf("\n 1 molecule in about %d",1/f)
