clc;
clear;
//Example 3.18
m=5500    //Mass flow rate in [kg/h]
m=m/3600    //[kg/s]
rho=1.07    //Density of fluid in [g/cm^3]
rho=rho*1000    //[kg/m^3]
vfr=m/rho    //Volumetric flow rate in [m^3/s]
Di=40    //Diameter of tube [mm]
Di=Di/1000    //[m]
A=(%pi/4)*Di^2    //Area of cross-section in [sq m]
u=vfr/A    //Velocity of flowing fluid    [m/s]
rho=1070    //Density in [kg/m^3]
mu=0.004    //Viscosity in [kg/m.s]
Nre=Di*u*rho/mu
Nre=12198       //Approx
//Since this reynold's number is less than 10000,the flow is turbulent
Cp=2.72    //Specific heat in [kJ/kg.K]
Cp=Cp*10^3    //Specific heat in [J/kg.K]
k=0.256    //thermal conductivity in [W/m.K]
Npr=Cp*mu/k    //Prandtl number
Nnu=0.023*(Nre^0.8)*(Npr^0.4)    //Nusselt number
hi=k*Nnu/Di    //Inside heat transfer coefficient in [W/m^2.K]
printf("Inside heat transfer coefficient is %f W/sq m.K",hi);
