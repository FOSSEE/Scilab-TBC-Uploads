clc
clear
//Input data
m=0.2//Mass of the ball in kg
r=1.5//Radius of vertical circle in m
q=35//Angle made by the ball in degrees
v=6//Velocity of the ball in m/s

//Calculations
T=(m*((v^2/r)+(9.8*cosd(q))))//Tension in the string in N
at=9.8*sind(q)//Tangential acceleration in m/s^2
ar=(v^2/r)//Radial acceleration in m/s^2
a=sqrt(at^2+ar^2)//Acceleration in m/s^2

//Output
printf('Tension in the string is %3.1f N \n Tangential acceleration is %3.2f m/s^2 \n Radial acceleration is %i m/s^2',T,at,ar)
