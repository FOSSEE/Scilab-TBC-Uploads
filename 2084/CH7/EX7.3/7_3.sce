//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 7.3
//calculation of the magnitude of linear acceleration

//given data
r=10*10^-2//radius(in cm)
t=4//time(in s) taken

//calculation
d=2*%pi*r//distance covered
v=d/t//linear speed
a=(v*v)/r

printf('the linear acceleration is %3.2f m/s^2',a)
