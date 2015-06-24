clc;
clear;
//Example 3.39
k=0.035; //[W/(m.K)]
Npr=0.684   ;//Prandtl number
Beta=2.42*10^-3; //[K^-1]
v=27.8*10^-6;    //[m^2/s]
Tw=533;  //[K]
T_inf=363  ;    //[K]
dT=Tw-T_inf //[K]
D=0.01  ;//[m]
g=9.81; //[m/s^2]
Nra=(g*Beta*dT*(D^3))/(v^2)
//For this <10^5,we have for sphere
A=4*%pi*(D/2)^2 //Area of sphere in [m^2]
Nnu=(2+0.43*Nra^(1.0/4.0))//Nusslet number
h=Nnu*k/D   //W/(m^2.K)
Q=h*A*dT    //[W]
printf("\nRate of heat loss is %f W",Q)
