//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 7.5
//calculation of the normal contact force by the side wall of the groove

//given data
r=25*10^-2//radius(in m) of the cirlce
m=.1//mass(in kg) of the block
t=2//time(in s) taken by the block

//calculation
v=2*%pi*r/t//speed of the block
a=(v*v)/r//acceleration of the block
N=m*a//newton's second law

printf('the normal contact force by the side wall of the groove is %3.2f N',N)
