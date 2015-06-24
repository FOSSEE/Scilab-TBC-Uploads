clc
clear
//input data
D=1.3//Diameter of the pump in m
Q=3.5/60//Discharge of water by pump in m^3/s
U2=10//Tip speed of pump in m/s
Cr2=1.6//Flow velocity of water in pump in m/s
b2=30//Outlet blade angle tangent to impeller periphery in degree
Cx1=0//Whirl velocity at inlet in m/s
U=10//Tip speed of pump in m/s
d=1000//Density of water in kg/m^3
g=9.81//Acceleration due to gravity in m/s^2

//calculations
Wx2=Cr2/tand(b2)//Exit relative velocity in m/s
E=(U2/g)*(U2-(Wx2))//Euler head in m or W/(N/S)
m=d*Q//Mass flow rate of water in kg/s
W=E*m*g//Power delivered in W
r=D/2//Radius of the pump in m
T=W/(U/r)//Torque delivered in Nm

//output
printf('Torque delivered by the impeller is %3.1f Nm',T)
