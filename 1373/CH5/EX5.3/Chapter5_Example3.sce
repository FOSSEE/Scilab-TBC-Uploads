//Chapter-5, Example 5.3, Page 164
//=============================================================================
clc
clear

//INPUT DATA
D=0.01;//Outer diameter of the rod in m
T=320;//Original temperature in degree C
Tl=120;//Temperature of liquid in degree C
h=100;//Heat transfer coefficient in W/m^2.K
Tf=200;//Final temperature of rod in degree C
k=40;//Thermal conductivity in W/m.K
c=460;//Specific heat in J/kg.K
p=7800;//Density in kg/m^3

//CALCULATIONS
V=(3.14*D^2*1)/4;//Volume of rod in m^3 taking 1m length
A=(3.14*D*1);//Surface area of rod in m^2 taking 1m length
Lc=(D/4);//Corrected length in m
Bi=((h*Lc)/k);//Biot number
t=-log((Tf-Tl)/(T-Tl))/((h*4)/(p*c*D));//Time at which rod temperature becomes 200 degree C in s

//OUTPUT
mprintf('Time at which rod temperature becomes 200 degree C is %3.2f s',t)

//=================================END OF PROGRAM==============================
