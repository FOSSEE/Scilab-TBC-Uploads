clc
//Initialization of variables
d=8 //in
ir=16 //in
MW=28.97
T=70+460 //R
P=30+14.7 //psia
//calculations
V=%pi^2 *d^2 *(d+ir)/4
V=V*10/12^3
Rair=1545/MW
m=P*144*V/(Rair*T)
//results
printf("Mass of air = %.2f lbm",m)
