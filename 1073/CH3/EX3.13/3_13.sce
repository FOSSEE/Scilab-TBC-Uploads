clc;
clear;
//Exmaple 3.13
v=15.69*10^-6    //[sq m./s]
k=0.02624    //[W/m.K]
Npr=0.708    //Prandtl number
mu=2.075*10^-5    //kg/m.s
u_inf=4    //[m/s]
mu_inf=1.8462*10^-5    //[m/s] velocity
Tw=350    //[K]
T_inf=300    //[K]
D=0.012    //[m]
r=D/2    //Radius in [m]
Nre=u_inf*D/v    //Reynold's numbe
Nnu=2+(0.4*Nre^(1.0/2.0)+0.06*Nre^(2.0/3.0))*Npr^(0.4)*(mu_inf/mu)^(1.0/4.0)
h=Nnu*k/D    //[W/sq m.K]

A=4*%pi*r^2    //Area in [sq m]
Q=h*A*(Tw-T_inf);
printf("\n Heat lost by the sphere is %f W",Q);