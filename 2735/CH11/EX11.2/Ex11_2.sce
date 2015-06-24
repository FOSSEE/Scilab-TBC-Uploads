clc
clear
//Initialization of variables
P2=10 //psia
P1=100 //psia
T1=900 //R
w=50 //Btu/lbm
k=1.39
cp=0.2418
//calculations
T2=T1*(P2/P1)^((k-1)/k)
T2=477
KE=-w-cp*(T2-T1)
//results
printf("Change in kinetic energy = %.1f Btu/lbm",KE)
