clc
//initialization of variables
P1=100 //lb/in^2
T1=500+460 //R
P2=15 //lb/in^2
eta=0.95
A=1 //in^2
gamma=1.4
//calculations
Ve=2200 //ft/sec
V2=eta*Ve
T2=T1*(1-eta*(1-(P2/P1)^((gamma-1)/gamma)))
vexit=53.3*T2/(144*P2)
wdot=A*V2/(144*vexit)
//results
printf("Exit velocity = %.1f ft^3/lbm",vexit)
printf("\n Mass flow = %.3f lbm/sec",wdot)
