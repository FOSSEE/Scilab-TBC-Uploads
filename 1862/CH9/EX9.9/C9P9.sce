
clear
 clc
//to find magnitude of torque
//to find resultant angular acceleration of the system


// GIVEN::

//refer to figure 9-25 from page no. 191
//force exerted
F = 115//in N
//distance from axis of rotation at which force is exerted
r = 1.50//in meters
//angle of apllication of force
theta1 = 32//in degrees
//direction of horizontal component
theta2 = 15//in degrees
//acceleration due to gravity
g = 9.8//in m/s^2
//radius od disk
R = 1.5//in meters
//thicknes of disk
d = 0.40//in cm
//mass of child
m = 25//in kg
//radius of position of child
r1 = 1.0//in meters


// SOLUTION:

//refer to figure 9-25 from page no. 191
//horizontal component of force
Fh = F*cosd(theta1)//in N
//component of force perpendicular to r
F_perpendicular = Fh*cosd(theta2)//in N
//vertical torque along the axis of rotation
tow = r*F_perpendicular//in N.m

//volume of disk
volume = %pi*(R*100)^2*d//in m^3
//consider density of steel
density = 7.9//in g/cm^3
//mass of merry-go-round
M = (volume*density)*10^-3//in kg
//rotational inertia of disk
Im = ((1/2)*M*R^2)///in kg.m^2
//rotational inertia of child
Ic = m*r1^2///in kg.m^2
//total rotational inertia
It = Im + Ic//in kg.m^2
//angular acceleration of the system
alpha_z = tow/It//in rad/s^2

printf ("\n\n Horizontal component of force Fh = \n\n %.1f N",Fh);
printf ("\n\n Component of force perpendicular to r F_perpendicular  = \n\n %.1f N",F_perpendicular);
printf ("\n\n Vertical torque along the axis of rotation tow = \n\n %3i N.m",tow);
printf ("\n\n Rotational inertia of disk Im = \n\n %3i kg.m^2",Im);
printf ("\n\n Rotational inertia of child Ic = \n\n %3i kg.m^2",Ic);
printf ("\n\n Total rotational inertia It = \n\n %3i kg.m^2",It);
printf ("\n\n Angular acceleration of the system alpha_z = \n\n %.2f rad/s^2",alpha_z);
