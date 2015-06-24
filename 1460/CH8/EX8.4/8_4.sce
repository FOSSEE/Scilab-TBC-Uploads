clc
//initialization of variables
Pratio=6
P=14.7 //lb/in^2
Tt1=60+460 //R
Tt3=1600+460 //R
w=60 //lb/sec
cp=0.24 //B/lbm F
g=1.4
R=53.3 //ft-lb/lbm R
//calculations
Tt2=Tt1*(Pratio)^((g-1)/g)
Tratio=Tt2/Tt1
Q=cp*(Tt3-Tt2)
eta=1- 1/Tratio
W=eta*778*Q
Wdot=w*W/550
//results
printf("Thermal efficiency = %.3f",eta)
printf("\n Horsepower output = %d hp",Wdot)
