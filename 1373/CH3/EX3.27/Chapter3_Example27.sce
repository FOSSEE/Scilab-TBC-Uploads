//Chapter-3, Example 3.27, Page 103
//=============================================================================
clc
clear

//INPUT DATA
D=0.025//Diameter of the rod in m
Ti=22;//Temperature of air in the room in degree C
x=0.1;//Distance between the points in m
T=[110,85];//Temperature sat two points in degree C
h=28.4;//Heat transfer coefficient in W/m^2.K

//CALCULATIONS
m=-log((T(2)-Ti)/(T(1)-Ti))/x;//Calculation of m for obtaining k
P=(3.14*D);//Perimeter of the rod in m
A=(3.14*D^2)/4;//Area of the rod in m^2
k=((h*P)/((m)^2*A));//Thermal conductivity of the rod material in W/m.K

//OUTPUT
mprintf('Thermal conductivity of the rod material is %3.1f W/m.K',k)

//=================================END OF PROGRAM==============================
