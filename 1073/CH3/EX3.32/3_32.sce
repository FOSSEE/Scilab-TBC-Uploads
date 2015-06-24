clc;
clear;
//Example 3.32
k=0.630 //W/(m.K
Beta=3.04*10^-4 //K^-1
rho=1000    //kg/m^3
mu=8.0*10^-4    //[kg/(m.s)]
Cp=4.187    //kJ/(kg.K)
g=9.81  //[m/(s^2)]
Tw=313  //[K]
T_inf=298   //[K]
dT=Tw-T_inf //[K]
D=20    //[mm]
D=D/1000    //[m]
Ngr=9.81*(rho^2)*Beta*dT*(D^3)/(mu^2)   //Grashoff number
Cp1=Cp*1000 //[J/kg.K]
Npr=Cp1*mu/k //Prandtl number
//Average nusselt number is
Nnu=0.53*(Ngr*Npr)^(1.0/4.0)
h=Nnu*k/D  //[W/ sqm.K]
Q_by_l=h*%pi*D*dT   //Heat loss per unit length [W/m]
printf("\nHeat loss per unit length of the heater is %f W/m",Q_by_l);

