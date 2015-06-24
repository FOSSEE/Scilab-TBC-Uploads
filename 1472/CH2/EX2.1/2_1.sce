clc
//Initialization of variables
g=1.4
P=100 //psia
V1=3 //cu ft
Pf=20 //psia
//calculations
V2=V1*(P/Pf)^(1/g)
W=(Pf*V2-P*V1)*144/(1-g)
//results
printf("Net work done = %d ft",W)
