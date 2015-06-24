clc;
clear;
//Example 3.4
lambda=2257 //[kJ/kg]
lambda=lambda*1000  //in [J/kg]
rho_l=957.9    //rho*l[kg/m^3]
rho_v=0.5955   //[kg/m^3]
sigma=5.89*10^-2    //[N/m]
g=9.81  //[m/s^2]
//Peak heat flux is given by
Q_by_A_max=(%pi/24)*(lambda*rho_v^0.5*(sigma*g*(rho_l-rho_v))^(1/4))    //W/m^2
Q_by_A_max=Q_by_A_max/(10^6)    //MW/(sq m)
printf("\n Peak heat flux is %f MW/sq m",Q_by_A_max);
