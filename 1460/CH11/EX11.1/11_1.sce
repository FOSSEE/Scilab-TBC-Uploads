clc
//initialization of variables
P1=100 //lb/in^2
P2=14.7 //lb/in^2
T1=600+460 //R
T2=300+460 //R
area=1 //in^2
//calculations
disp("From steam tables")
ht1=1329.1 
h2=1192.8
v2=30.53
Vel=sqrt(2*32.2*778*(ht1-h2))
wdot=area*Vel/(144*v2)
//results
printf("Exit velocity = %d ft/sec",Vel)
printf("\n Mass flow rate = %.3f lbm/sec",wdot)
