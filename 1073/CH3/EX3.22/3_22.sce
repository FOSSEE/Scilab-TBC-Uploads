clc;
clear;
//Example 3.22
m_dot=25000    //massflow rate of water [kg/h]
rho=992.2    //[kg/m^3]
k=0.634    //[W/m.K]
vfr=m_dot/rho    //[m^3/h]
Npr=4.31    //Prandtl numberl
Di=50    //[mm]
Di=0.05    //[m]
dT=10    //[K] as the wall is at a temperature of 10 K above the bulk temperature
u=(vfr/3600)/(%pi*(Di/2)^2)    //Velocity of water in [m/s]
u=3.56          //Approximation
//Nre=Di*u*rho/mu=Di*u/v    as v=mu/rho
v=0.659*10^-6;    //[m^2/s]
Nre=Di*u/v    //Reynolds number
//As it is less than 10000,the flow is in the turbulent region for heat transfer and Dittus Boelter eqn is used
Nnu=0.023*(Nre^0.8)*(Npr^0.4);    //Nusselt number
hi=Nnu*k/Di    //Heat transfer coefficiet in [W/sq m.K]
q_by_l=hi*%pi*Di*dT   //Heat transfer per unit length[kW/m]
printf("Average value of convective film coefficient is hi= %d W/sq m.K \nHeat transferred per unit length is Q/L=%f kW/m",round(hi),q_by_l/1000);
 

