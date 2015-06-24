clc
//Initialization of variables
S1=57.47
S2=50.34
S3=49
H1=8.09
H2=21.06
H3=0
F1=12.39
F2=20.72
F3=0
//calculations
dS=S1-S2-0.5*S3
dH=H1-H2-0.5*H3
dF=F1-F2-0.5*F3
//results
printf("Change in entropy = %.2f eu",dS)
printf("\n Change in enthalpy = %.2f kcal",dH)
printf("\n Change in free energy = %.2f kcal",dF)
