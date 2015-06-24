//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 9.6w
//calculation of the acceleration of the centre of mass

//given data
M=2.5//mass(in kg) of the body
F1=6//force(in N) acting at point 1
F2=5//force(in N) acting at point 2
F3=6//force(in N) acting at point 3
F4=4//force(in N) acting at point 4
theta1=0//angle(in degree)
theta2=37//angle(in degree)
theta3=53//angle(in degree)
theta4=60//angle(in degree)

//calculation
Fx=(-F1*cosd(theta1))+(F2*cosd(theta2))+(F3*cosd(theta3))+(F4*cosd(theta4))//X component of resultant force
Fy=(F1*sind(theta1))+(F2*sind(theta2))+(-F3*sind(theta3))+(F4*sind(theta4))//X component of resultant force
F=sqrt((Fx*Fx)+(Fy*Fy))
theta=atand(Fy/Fx)
acm=F/M//acceleration of centre of mass

printf('the acceleration of the centre of mass is %3.1f m/s^2 and is in the direction of the resultant force',acm)
