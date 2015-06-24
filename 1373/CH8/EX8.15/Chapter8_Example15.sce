//Chapter-8, Example 8.15, Page 359
//=============================================================================
clc
clear

//INPUT DATA
p=3;//Pressure of air in atm
r1=0.075;//Radius of first sphere in m
r2=0.1;//Radius of second sphere in m
L=0.025;//Distance in m
T1=325;//Temperature of first sphere in K
T2=275;//Temperature of second sphere in K
R=287;//Universal gas constant in J/

//CALCULATIONS
Tf=(T1+T2)/2;//Film temperature in degree C
d=(p/(R*Tf));//Desnsity in kg/m^3
k=0.0263;//Thermal conductivity in W/m.K
v1=(5.23*10^-6);//Kinematic viscosity in m^2/s
b=(1/300);//Coefficient of thermal expansion in 1/K
Pr=0.707;//Prantl numbe
Gr=((9.81*b*L^3*(T1-T2))/(v1^2));//Grashof number
Ra=(Gr*Pr);//Rayleigh number
Ra1=((L/((4*r1*r2)^4))*(Ra/((2*r1)^(-7/5)+(2*r2)^(-7/5))^5))^0.25;//Equivalent Rayleigh's number
ke=(k*0.74*((Pr*Ra1)/(0.861+Pr))^0.25);//Effective thermal conductivity in W/m.K
Q=(ke*3.14*4*r1*r2*(T1-T2))/L;//Rate of heat loss in W

//OUTPUT
mprintf('Convection heat transfer rate is %3.2f W',Q)

//=================================END OF PROGRAM==============================
