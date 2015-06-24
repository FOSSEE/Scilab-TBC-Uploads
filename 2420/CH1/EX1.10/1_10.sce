clc
clear
//Initialization of variables
g=32.2 //ft/s^2
p1=100 //psia
p2=25 //psia
v2=2 //cu ft
//calculations
W=p1*144*v2 - p2*144*v2
//results
printf("Work done = %d ft-lb",W)
