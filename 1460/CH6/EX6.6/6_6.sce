clc
//Initialization of variables
P1=16 //lb/in^2
P2=14 //lb/in^2
Tt=83+460 //R
gamma=1.4
cp=0.24 //B/lbm F
//calculations
T=Tt *(P2/P1)^((gamma-1)/gamma)
dh=cp*(Tt-T)
V=sqrt(2*32.2*778*dh)
//results
printf("Actual temperature in the flow = %d R",T)
printf("\n Flow velocity = %d ft/sec",V)


