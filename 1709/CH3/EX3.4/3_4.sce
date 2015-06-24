clc
//Initialization of variables
P=20 //psia
V=1 //ft^3
T=560 //R
cv=0.1715
Q=10//Btu
//calculations
m=P*144*V/(53.35*T)
T2=Q/(m*cv) +T
P2=m*53.35*T2/V
//results
printf("Fina pressure = %d lbf/ft^2",P2)
