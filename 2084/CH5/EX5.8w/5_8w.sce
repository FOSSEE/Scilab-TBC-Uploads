//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 5.8w
//calculation of the maximum acceleration of the man for safe climbing

//given data
m=60//mass(in kg) of the man
theta=30//angle(in degree) made by the rope with ground
fgmax=360//maximum force(in N0 that can be applied to the wooden clamp
g=10//gravitational acceleration(in m/s^2) of the earth

//calculation
T=fgmax/sind(theta)//since t*sin(theta)=upward force
a=(T-(m*g))/m//from equation of motion

printf('the maximum acceleration of the man for safe climbing is %3.2f m/s^2',a)
