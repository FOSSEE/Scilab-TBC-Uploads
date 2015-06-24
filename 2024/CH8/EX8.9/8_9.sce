clc
//Initialization of variables
k=1.38
R=1.986
T1=900 //R
M=29
pr=0.1
Wrev=50 //Btu/lbm
//calculations
KE = k*R*T1/M/(1-k) *(pr^((k-1)/k) -1) -Wrev
//results
printf("Change in kinetic energy = %d Btu/lbm",KE)
