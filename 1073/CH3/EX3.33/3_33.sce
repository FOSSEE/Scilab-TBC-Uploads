clc;
clear;
//Example 3.33
k=0.03406   //[W/(m/K)]
Beta=2.47*10^-3 //K^-1
Npr=0.687   //Prandtl number
v=26.54*10^-6   //m^2/s
g=9.81  //[m/s^2]
Tw=523  //[K]
T_inf=288   //[K]
dT=Tw-T_inf //[K]
D=0.3048    //[m]
Ngr=(g*Beta*dT*(D^3))/(v^2)     //Grashof number
Nra=Ngr*Npr 
//For Nra less than 10^9,we have for horizontal cylinder
Nnu=0.53*(Nra^(1.0/4.0))    //Nusselt number
h=Nnu*k/D   //[W/sq m.K]
Q_by_l=h*%pi*D*dT;  //W/m
printf("Heat loss of heat transfer per meter lengh is %f W/m",Q_by_l);
