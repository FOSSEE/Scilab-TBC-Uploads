clc
//initialization of variables
P=80 //lb/in^2
T=120+460 //R
R=53.3 //ft-lb/lbmR
//calculations
disp("From table 6,")
h=138.66 //B/lbm
P=P*144 //lb/ft^2
v=R*T/P
//results
printf("Specific volume = %.2f ft^3/lbm",v)
