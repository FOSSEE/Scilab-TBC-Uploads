clc
clear
//input data
q=30//Angle of inclination in degrees
h=1//Height in m

//Calculations
v=sqrt((10/7)*9.8*h)//Velocity in m/s
a=(5/7)*9.8*sind(q)//Acceleration in m/s^2

//Output
printf('Velocity and acceleration of the centre of mass of the sphere is %3.2f m/s and %3.1f m/s^2',v,a)
