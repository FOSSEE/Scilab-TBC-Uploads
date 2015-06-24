//Chapter-3, Example 3.22, Page 88
//=============================================================================
clc
clear

//INPUT DATA
D=0.025;//Diameter of annealed copper wire in m
I=200;//Current in A
R=(0.4*10^-4);//Resistance in ohm/cm
T=[200,10];//Surface temperature and ambient temperature in degree C
k=160;//Thermal conductivity in W/m.K

//CALCULATIONS
r=(D/2);//Radius of annealed copper wire in m
Q=(I*I*R*100);//Heat transfer rate in W/m
V=(3.14*r*r);//Vol. of wire in m^2
q=(Q/V);//Heat loss in conductor in W/m^2
Tc=T(1)+((q*r*r)/(4*k));//Maximum temperature in the wire in degree C
h=((r*q)/(2*(T(1)-T(2))));//Heat transfer coefficient in W/m^2.K

//OUTPUT
mprintf('Maximum temperature in the wire is %3.2f degree C \n Heat transfer coefficient is %3.2f W/m^2.K',Tc,h)

//=================================END OF PROGRAM==============================
