clc
clear
//Initialization of variables
g=32.2 //ft/s^2
v1=1 //cu ft
p1= 100 //psia
p2=50 //psia
v2=3 //cu ft
//calculations
pa=(p1+p2)/2
W=pa*(v2-v1)*144
//results
printf("Work done = %d ft-lb",W)
