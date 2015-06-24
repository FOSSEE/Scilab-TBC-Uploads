clc;
clear;
//Example 3.42
Ts=373  //[K]
rho_l=957.9    //rho*l[kg/m^3]
Cpl=4217    //[J/kg.K]
mu_l=27.9*10^-5 //[kg/(m.s)]
rho_v=0.5955   //[kg/m^3]
Csf=0.013
sigma=5.89*10^-2    //[N/m]
Nprl=1.76
lambda=2257 //[kJ/kg]
lambda=lambda*1000  //in [J/kg]
n=1 //for water
m_dot=30    //Mass flow rate [kg/h]
m_dot=m_dot/3600    //[kg/s]
D=30    //Diameter of pan [cm]
D=D/100 //[m]
g=9.81  //[m/s^2]
A=%pi*(D/2)^2   //Area in [sq m]
Q_by_A=m_dot*lambda/A   //[W/sq m]
//For nucleate boiling point we have:
dT=(lambda/Cpl)*Csf*(((Q_by_A)/(mu_l*lambda))*sqrt(sigma/(g*(rho_l-rho_v))))^(1.0/3.0)*(Nprl^n) //[K]
Tw=Ts+dT    //[K]
printf("\n Temperature of the bottom surface of the pan is %f W/(sq m)",Tw);
