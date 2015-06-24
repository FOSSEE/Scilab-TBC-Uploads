clc;
clear;
//Example 3.44
rho_l=957.9 //[kg/m^3]
lambda=2257 //[kJ/kg]
lambda=lambda*10^3  //[J/kg]
rho_v=31.54 //[kg/m^3]
Cpv=4.64    //[kJ/kg.K]
Cpv=Cpv*10^3    //[J/kg.K]
kv=58.3*10^-3//[W/(m.K)]
g=9.81  //[m/s^2]
mu_v=18.6*10^-6 //[kg/(m.s)]
e=1.0   //Emissivity
sigma=5.67*10^-8;
Ts=373  //[K]
Tw=628  //[K]
dT=Tw-Ts    //[K]
D=1.6*10^-3 //[m]
T=(Tw+Ts)/2 //[K]
hc=0.62*((kv^3)*rho_v*(rho_l-rho_v)*g*(lambda+0.40*Cpv*dT)/(D*mu_v*dT))^(1.0/4.0)//Convective heat transfer coeff  [W/sq m.K]
hr=e*sigma*(Tw^4-Ts^4)/(Tw-Ts)  //Radiation heat transfer coeff in [W/sq m.K]
h=hc+(3/4)*hr   //Total heat transfer coefficient W/(sq m.K)
Q_by_l=h*%pi*D*dT   //Heat dissipation rate per unit length in [kW/m]
printf("\n Stable film boiling point heat transfer coefficient is %f W/(sq m.K)",h);
Q_by_l=Q_by_l/1000  //[kW/m]
printf("\n Heat dissipated per unit length of the heater is %f kW/m",Q_by_l);
