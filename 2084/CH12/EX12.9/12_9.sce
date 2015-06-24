//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 12.9
//calculation of the time period of oscillation

//given data
L=1//length(in m) of the rod
g=9.8//gravitational acceleration(in m/s^2) of the earth

//calculation
//from formula of time period......T = 2*%pi*sqrt(I/(m*g*l))
//for uniform rod ....I = (m*L*L*L/3) and l=L/2
T=2*%pi*sqrt((2*L)/(3*g))

printf('the time period of oscillation is %3.2f s',T)
