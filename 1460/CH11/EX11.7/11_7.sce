clc
//initialization of variables
P=30 //lb/in^2
T=1000+460 //R
Pd=14.7 //lb/in^2
w=60 //lbm/sec
eta=0.95 //percent
R=53.3
gamma=1.35
cp=0.264
//calculations
V2s=sqrt(2*gamma*32.2*53.3*T*(1-(Pd/P)^(0.259))/(gamma-1))
V2=eta*V2s
Fn=w*(V2)/32.2
//results
printf("Thrust of the engine = %d ft/sec",Fn)
