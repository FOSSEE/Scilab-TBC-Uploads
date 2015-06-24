
clc;
clear;
//Example 3.5
//Given
mu=3.9*10^-4    //Kinematic viscosity in sq m/s
k=36.4*10^-3    //Thermal conductivity in W/(m.K)
Npr=0.69
u_inf=8    //[m/s]
L=1    //Lenght of plate in [m]
Nre_l=u_inf*L/mu 
//Since Nre_l is less than 3*10^5 ,the flow is laminar over the entire length of plate
Nnu=0.664*sqrt(Nre_l)*Npr^(1.0/3.0)    //=hL/k

h=k*Nnu/L    //w/sq m.K
h=3.06      //Approximation   [W/sq m.K]
T_inf=523    //[K]
Tw=351    //[K]
W=0.3    //Width of plate [m]
A=W*L    //Area in [sq m]
Q=h*A*(T_inf-Tw)    // Rate of heat removal from one side in [W]
printf("\nRate of heat removal is %f W\n",Q)
//from two side:
Q=2*Q    //[W]
printf("\n %f W heat should be removed continously from the plate",Q);

