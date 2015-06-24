//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 7.6
//calculation of the speed of vehicle on the turn

//given data
r=10//radius(in m) of the turn
theta=10//angle(in degree) of the bank
g=9.8//gravitational acceleration(in m/s^2) of the earth

//calculation
v=sqrt(r*g*tand(theta))//since tand(theta) = (v*v)/(r*g)

printf('for normal contact force providing the necessary centripetal force,the speed of vehicle on the turn is %3.2f m/s',v)
