clc;
clear;
//Example 3.48
rho=960 //[kh/m^3]
mu=2.82*10^-4   //[kg/(m.s)]
k=0.68  //[W/(m.K)]
lambda=2255 //[kJ/kg]
lambda=lambda*10^3  //[J/kg]
Ts=373  //Saturation temperature of steam [K]
Tw=371  //[K]
dT=Ts-Tw    //[K]
L=0.3   //Dimension [m]
g=9.81  //[m/s^2]
h=0.943*(rho^2*g*lambda*k^3/(L*mu*dT))^(1/4)    //W/sq m.K
A=L^2   //[sq m] 
Q=h*A*(Ts-Tw)   //[W]=[J/s]
m_dot=Q/lambda  //Condensate rate[kg/s]
m_dot=m_dot*3600    //[kg/h]
printf("\n Average heat transfer coefficient is %f W/(sq m.K)\n",h);
printf("\nHeat transfer rate is %f J/kg\n",Q);
printf("\n Steam condensate rate per hour is %f kg/h\n",m_dot);
