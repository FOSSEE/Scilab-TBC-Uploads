clc
clear
//Initialization of variables
K=0.6003
Y1=0.91
D1=6.065
D2=1.820
rho1=0.156
p1=30
p2=20.18
//calculations
bet=D2/D1
m=0.525*K*Y1 *D2^2 *sqrt(rho1*(p1-p2))
C=K*sqrt(1-bet^4)
//results
printf("mass flow rate = %.3f lbm/sec",m)
printf("\n Coefficient of discharge = %.3f",C)
