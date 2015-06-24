clc
//Initialization of variablesk=1.38
R=1.986
T1=900 //R
M=29
pr=0.1
Wrev=50 //Btu/lbm
cp=0.245
k=1.3
//calculations
KE = -cp*T1*(pr^((k-1)/k) -1) -Wrev
//results
printf("Change in kinetic energy = %d Btu/lbm",KE)
