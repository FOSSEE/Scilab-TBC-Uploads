clc
clear
//Initialization of variables
m=1 //lbm
P1=144 //psia
P2=150 //psia
T1=360 //F
J=778.16
//calculations
disp("From table 3,")
v1=3.160 //ft^3/lbm
h1=1196.5 //Btu/lbm
u1=h1-P1*144*v1/J
h2=1211.4 //Btu/lbm
u2=h2-P2*144*v1/J
dq=u2-u1
//results
printf("Heat transferred = %.1f Btu/lbm",dq)
