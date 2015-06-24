
clc;
clear;
//Example 3.34
rho=960.63  //Density in [kg/m^3]
Cp=4.216*10^3   //Specific heat in [J/(kg.K)]
D=16    //Diameter in [cm]
D=D/100 //[m]
k=0.68  //Thermal conductivity in [W/m.K]
A=(%pi*(D/2)^2)
L=A/(%pi*D)   //Length=A/P  in [m]
Beta=0.75*10^-3  //[K^-1]
alpha=1.68*10^-7    //[m^2/s]
g=9.81  //[m/s^2]
Tw=403  //[K]
T_inf=343   //[K]
dT=Tw-T_inf //[K]
v=0.294*10^-6   //[m^2/s]
Nra=(g*Beta*(L^3)*dT)/(v*alpha) 

//1.For Top surface
Nnu=0.15*(Nra)^(1.0/3.0)   //Nusselt number
ht=Nnu*k/L  //Heat transfer coeff for top surface in W/(m^2.K)
ht=round(ht)
//2.For bottom surface
Nnu=0.27*Nra^(1.0/4.0)  //Nusselt number
hb=Nnu*k/L  //[W/sq m.K]
hb=round(hb)
Q=(ht+hb)*A*dT; //[W]
printf("The rate of heat input is %f W",Q)

