clc
clear
//Initialization of variables
p0=19.7 //psia
R=53.3 //lb-ft/lb-R
T0=539.6 //R
g=32.2 //ft/s^2
pa=14.7 //psia
d=1 //in
k=1.4
//calculations
rho0=p0*144/(g*R*T0)
pr=pa/p0
G=%pi/4 *(d/12)^2 *(2*k/(k-1) *p0*144*rho0)^(0.5) *(pr)^(1/k) *(1-pr^((k-1)/k))^0.5
//results
printf("Mass rate of air flow = %.5f slug/sec",G)
