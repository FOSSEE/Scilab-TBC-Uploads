clc
//initialization of variables
Pt1=100 //lb/in^2
P2=15 //lb/in^2
A=1 //in^2
T=500+460 //F
gamma=1.4
//calculations
Pratio=P2/Pt1
r1=(P2/Pt1)^((gamma-1)/gamma)
r2=(P2/Pt1)^(2/gamma)
r3=(P2/Pt1)^((gamma+1)/gamma)
V2=sqrt(2*gamma*32.2*53.3*T*(1-r1)/(gamma-1))
wdot=A*Pt1*sqrt(2*gamma*(r2-r3)/(gamma-1)) /(sqrt(53.3*T/32.2))
//results
printf("Exit velocity = %d ft/sec",V2)
printf("\n Mass flow rate = %.2f lbm/sec",wdot)
