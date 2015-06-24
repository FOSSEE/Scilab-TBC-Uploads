//Chapter-3, Example 3.17, Page 74
//=============================================================================
clc
clear

//INPUT DATA
D1=0.1;//I.D of the first pipe in m
D2=0.3;//O.D of the first pipe in m
k1=70;//Thermal conductivity of first material in W/m.K
D3=0.4;//O.D of the second pipe in m
k2=15;//Thermal conductivity of second material in W/m.K
T=[300,30];//Inside and outside temperatures in degree C

//CALCULATIONS
r1=(D1/2);//Inner Radius of first pipe in m
r2=(D2/2);//Outer Radius of first pipe in m
r3=(D3/2);//Radius of second pipe in m
Q=((4*3.14*(T(1)-T(2)))/(((r2-r1)/(k1*r1*r2))+((r3-r2)/(k2*r2*r3))))/1000;//Rate of heat flow through the sphere in kW

//OUTPUT
mprintf('Rate of heat flow through the sphere is %3.2f kW',Q)

//=================================END OF PROGRAM==============================
