clc
//initialization of variables
A=0.3 //ft^2
P=30 //lb/in^2
T=160+460 //R
Mn=0.82
g=1.4
//calculations
w=A*144*P*sqrt(g*32.2) *Mn*(1+ (g-1)/2 *(Mn)^2)^(-3) /sqrt(53.3*T)
//results
printf("Mass flow = %.1f lbm/sec",w)
