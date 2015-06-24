clc
//Initialization of variables
rate=20 //gal/min
P1=20 //psia
P2=1000 //psia
T=100+460 //R
//calculations
vf=0.01613
disp("From table A-8")
dv=-5.2*10^-5 //ft^3/lbm
K=-dv/(vf*P2*144)
wt=K*vf*(P2^2 - P1^2)*144*144*10^4 /2
m=rate*8.33
Wt=wt*m
Wthp=Wt/33000
//results
printf("Pump power required = %d hp",Wthp)
