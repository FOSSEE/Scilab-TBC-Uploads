clear
clc
//Example 7.5 FORCE ON A CONTRACTION IN A PIPE
D1=0.3; //[m]
D2=0.2; //[m]
A1=%pi*D1^2/4 //area[m^2]
A2=%pi*D2^2/4 //area[m^2]
Q=0.707; //rate of flow[m^3/s]
V1=Q/A1; //velocity[m/s]
V2=Q/A2; //velocity[m/s]
ht=0; 
hp=0;
hL=2.58; //[m]
alpha1=1;
alpha2=1;
rho=1000; //density[kg/m^3]
Gamma=9810; //specific weight[N/m^3]
g=9.81; //[m/s^2]
p1=250000; //pressure[Pa]
p2=p1+Gamma*(hp-ht-hL-(alpha2*V2^2-alpha1*V1^2)/(2*g)) //pressure at L[Pa]
//Momentum equation
//p1*A1-p2*A2+Fx=m*V2-m*V1, m=rho*Q
Fx=(rho*Q*(V2-V1)+p2*A2-p1*A1)/10^3 //force[kN]
printf("\nThe horizontal force required to hold the transition in place = %.2f kN,in -ve x direction.\n",-Fx)