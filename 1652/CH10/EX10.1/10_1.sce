clc
//Initialization of variables
T2=100+273.2 //K
T1=50+273.2 //K
n=1 //mol
R=1.987 //cal/deg mol
//calculations
dS=5/2 *n*R*2.303*log10(T2/T1)
//results
printf("Change in entropy = %.3f eu",dS)
