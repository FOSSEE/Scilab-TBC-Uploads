clc
clear
//input data
Q=0.015//Discharge of water in pump in m^3/s
D1=0.2//Internal diameter of the impeller in m
D2=0.4//External diameter of the impeller in m
b1=0.016//Width of impeller at inlet in m
b2=0.008//Width of impeller at outlet in m
N=1200//Running speed of the pump in rpm
b22=30//Impeller vane angle at outlet in degree
g=9.81//Acceleration due to gravity in m/s^2
d=1000//Density of water in kg/m^3

//calculations
printf('From velocity triangles the following values have been deduced')
a11=90//The absolute water angle at inlet in degree
Cx1=0//Absolute whirl component at inlet in m/s
A1=3.1415*D1*b1//Area of flow at inlet in m^2
Cr1=Q/A1//Flow velocity through impeller at inlet in m/s
C1=Cr1//Absolute velocity at inlet in m/s
A2=3.1415*D2*b2//Area of flow at outlet in m^2
Cr2=Q/A2//Flow velocity through impeller at outlet in m/s
U2=(3.1415*D2*N)/60//Blade outlet speed in m/s
Cx2=U2-(Cr2/tand(b22))//Absolute whirl component at outlet in m/s
C2=(Cx2^2+Cr2^2)^(1/2)//Velocity at impeller exit in m/s
Ihl=((Cx2*U2)/g)-((C2^2)/(2*g))+((C1^2)/(2*g))//Pressure rise in impeller in m

//output
printf('\n\nThe rise in pressure in the impeller is %3.3f m',Ihl)
