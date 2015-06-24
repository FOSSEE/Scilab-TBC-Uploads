clc
clear
//Initialization of variables
g=32.2 //ft/s^2
v1=1 //cu ft
p1=100 //psia
//calculations
v2=2*v1
W=144*p1*(v2-v1)
//results
printf("Work done = %d ft-lb",W)
