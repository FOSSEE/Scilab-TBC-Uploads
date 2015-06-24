//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 5.7w
//calculation of acceleration with which ring starts moving if released from rest at an angle theta

//given data
//m=mass of the ring
theta=30//angle(in degree)of the release
m=1//assume for obtaiming the solution
M=2*m //mass of the block
g=9.8//gravitational acceleration(in m/s^2) of the earth

//calculation
//M*g-T=M*a*cosd(theta)........equation of motion of the block...(1)
//T*cosd(theta)=m*a............equation of motion of the ring....(2)
//solving above equations we get
a=(M*g*cosd(theta))/(m+M*(cosd(theta)*cosd(theta)))

printf('the acceleration with which ring starts moving if released from rest at an angle theta is %3.2f m/s^2',a)
