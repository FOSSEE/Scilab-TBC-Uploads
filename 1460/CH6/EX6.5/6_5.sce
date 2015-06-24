clc
//Initialization of variables
T1=40+460 //R
T2=340+460 //R
P1=15 //lb/in^2
cp=0.24
cv=0.171
//calculations
gamma=cp/cv
P2=P1 *(T2/T1)^(gamma/(gamma-1))
//results
printf("Final pressure = %.1f lb/in^2",P2)
