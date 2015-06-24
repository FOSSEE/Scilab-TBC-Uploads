clc
//Initialization of variables
m=1 //lbm
P1=144 //psia
P2=150 //psia
t1=360 //F
J=778.16
//calculations
disp("From steam tables,")
v1=3.160 //ft^3/lbm
h1=1196.5 //Btu/lbm
u1=h1-P1*v1*144/J
h2=1211.4 //Btu/lbm
u2=h2 - P2*144*v1/J
Qrev=u2-u1
//results
printf("Heat transferred = %.1f Btu/lbm",Qrev)
