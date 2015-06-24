//Chapter-3, Example 3.1, Page 45
//=============================================================================
clc
clear

//INPUT DATA
l=5;//Length of the wall in m
h=4;//Height of the wall in m
L=0.25;//Thickness of the wall in m
T=[110,40];//Temperature on the inner and outer surface in degree C
k=0.7;//Thermal conductivity in W/m.K
x=0.20;//Distance from the inner wall in m

//CALCULATIONS
A=l*h;//Arear of the wall in m^2
Q=(k*A*(T(1)-T(2)))/L;//Heat transfer rate in W
T=(((T(2)-T(1))*x)/L)+T(1);//Temperature at interior point of the wall, 20 cm distant from the inner wall in degree C

//OUTPUT
mprintf('a)Heat transfer rate is %i W \n b)Temperature at interior point of the wall, 20 cm distant from the inner wall is %i degree C',Q,T)

//=================================END OF PROGRAM==============================
