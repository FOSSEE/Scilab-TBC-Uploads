clc
//Initialization of variables
Pr=10
n=1.3
T1=900 //R
W=50 //Btu/lbm
//calculations
T2=T1/Pr^((n-1)/n)
h1=120.86
h2=30.69
dh=h2-h1
ke=-dh-W
//results
printf("Change in kinetic energy = %.2f Btu/lbm",ke)
