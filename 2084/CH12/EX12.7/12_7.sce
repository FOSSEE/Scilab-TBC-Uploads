//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 12.7
//calculation of the time period of a pendulum

//given data
g=%pi^2//gravitational acceleration(in m/s^2) of the earth
l=1//length(in m) of the pendulum

//calculation
T=2*%pi*sqrt(l*g^-1)//formula of time period

printf('the time period of the pendulum is %3.1f s',T)
