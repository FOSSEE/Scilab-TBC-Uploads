//Chapter-3, Example 3.26, Page 102
//=============================================================================
clc
clear

//INPUT DATA
To=140;//Temperature at the junction in degree C
Ti=15;//Temperature of air in the room in degree C
D=0.003;//Diameter of the rod in m
h=300;//Heat transfer coefficient in W/m^2.K
k=150;//Thermal conductivity in W/m.K

//CALCULATIONS
P=(3.14*D);//Perimeter of the rod in m
A=(3.14*D^2)/4;//Area of the rod in m^2
Q=sqrt(h*P*k*A)*(To-Ti);//Total heat dissipated by the rod in W

//OUTPUT
mprintf('Total heat dissipated by the rod is %3.3f W',Q)

//=================================END OF PROGRAM==============================
