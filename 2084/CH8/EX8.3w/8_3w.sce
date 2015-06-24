//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 8.3w
//calculation of the power delivered by the pulling force and average power

//given data
m=2//mass(in kg)
theta=30//angle(in degree)
a=1//acceleration(in m/s^2) of the block
t=4//time(in s)
g=9.8//gravitational acceleration(in m/s^2) of the earth

//calculation
F=(m*g*sind(theta))+(m*a)//resolving the forces parallel to the incline
v=a*t
P=F*v//equation of power
d=a*t*t/2//from equation of motion
W=F*d
pavg=W/t//average power delivered

printf('the power delivered by the pulling force at t=4 s is %d W',P)
printf('\nthe average power delivered by the pulling force between t=0 s to t=4 s is %3.1f W',pavg)
