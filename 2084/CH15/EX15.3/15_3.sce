//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 15.3
//calculation of the time taken by the pulse in travelling through a distance

//given data
m=1//mass(in kg) of the block
mu=1*10^-3*10^2//mass density(in kg/m)
l=50*10^-2//disatnce(in m) travelled
g=10//gravitational acceleration(in m/s^2) of the earth

//calculation
F=m*g//tension in the string
v=sqrt(F/mu)//wave velocity
T=l/v//time taken

printf('the time taken by the pulse in travelling through a distance of 50 cm is %3.2f s',T)
