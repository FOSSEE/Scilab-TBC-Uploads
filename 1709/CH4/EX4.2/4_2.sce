clc
//Initialization of variables
rate=80 //lbm/min
T1=100 //F
P1=100 //psia
P2=1000 //psia
//calculations
disp("From the tables,")
v=0.01613 //ft^3/lbm
W=rate*(P2-P1)*144*v
//results
printf("Work done = %.2f ft-lbf/min",W)
