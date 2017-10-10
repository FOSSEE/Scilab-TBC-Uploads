// Example 5_16
clc;funcprot(0);
// Given data
A=10;// The internal area of the rotating tube  in mm^2
V=5;// The speed of water flow in m/s
alpha=30;// Angle in degree
R=10;// The tip radial dimension in mm
T=2*10^-2;// Torque in Nm
rho=1*10^3;// The density of water in kg/m^3

// Calculation
omega=(V/(R*10^-2)*cosd(alpha))-((T)/(2*rho*(A*10^-6)*(R/100)^2*V));// The angular speed of the sprinkler rotor in s^-1
V=[(V*sind(alpha)),((V*cosd(alpha))-(omega*R*10^-2))];// The velocity V of the fluid stream relative to the ground in m/s
printf("\n(a)The angular speed of the sprinkler rotor,omega=%2.2f s^-1 \n(b)The velocity V in the ground reference frame is:V=(%1.1f m/s)i_r+(%1.1f m/s)i_theta",omega,V(1),V(2));
