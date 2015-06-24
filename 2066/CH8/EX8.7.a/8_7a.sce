clc
clear
//Initialization of variables
k=1.4
R=53.3 //lb-ft/lb R
pe=14.7 //psia
p0=114.7 //psia
T0=524.6 //R
g=32.2 //ft/s^2
d=0.5 //in
//calculations
pr=pe/p0
prcr=0.528
pr=prcr*p0
rho0= p0*144/(g*R*T0)
G=%pi/4 *(d/12)^2 *(k*p0*144*rho0)^(0.5) *(2/(k+1))^((k+1)/(2*(k-1)))
Wt=G*g
//results
printf("weight of air flow through the nozzle = %.4f lb/s",Wt)
