
clc;
clear;
//Example 3.30
k=0.02685   //W/(m.K)
v=16.5*10^-6  //kg/(m.s)
Npr=0.7 //Prandtl number
Beta=3.25*10^-3 //K^-1
g=9.81  //m/(s^2)
Tw=333; //[k]
T_inf=283   //[K]
dT=Tw-T_inf  //[K]
L=4 //Length/height  of plate [m]
Ngr=(g*Beta*dT*(L^3))/(v^2)   //Grashoff number
//Let const=Ngr*Npr
const=Ngr*Npr
//Sice it is >10^9
Nnu=0.10*(const^(1.0/3.0))   //Nusselt number
h=Nnu*k/L   //W/(sq m.K)
h=4.3       //Approx in book
W=7 //width in [m]
A=L*W   //Area of heat transfer in [sq m]
Q=h*A*dT    //[W]
printf("\nHeat transferred is %d W\n",Q)
