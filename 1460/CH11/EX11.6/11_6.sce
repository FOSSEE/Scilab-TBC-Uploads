clc
//initialization of variables
v=500 //ft/sec
P=14.7 //lb/in^2
T=60+460 //R
eta=0.85
cp=0.24
gamma=1.4
//calculations
Pt2=eta*P*(1+ (gamma-1)*v^2 /(2*gamma*32.2*53.3*T))^(gamma/(gamma-1))
Tratio=1+ (gamma-1)*v*v/(2*gamma*32.2*53.3*T)
Tt2=T*Tratio
//results
printf("Exit stagnation temperature  = %d R",Tt2+1)
