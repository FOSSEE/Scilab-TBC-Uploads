clc
//Initialization of variables
ratio=7
Q=300  //B/lbm
T1=60+460 //R
P1=14.7 //lb/in^2
cv=0.1715 //B/lvm F
g=1.4
//calculations
Tratio=(ratio)^(g-1)
T2=Tratio*T1
T3=T2+Q/cv
eta=1- 1/Tratio
WbyJ=eta*Q
W=778*WbyJ
//results
printf("Final temperature = %d R",T3)
printf("\n Thermal efficiency = %.3f",eta)
printf("\n Work done = %d ft-lb/lbm",W)
//The answers in the textbook are a bit different due to rounding off error
