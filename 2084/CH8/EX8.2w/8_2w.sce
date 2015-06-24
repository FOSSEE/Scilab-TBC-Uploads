//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 8.2w
//calculation of the value of minimum horsepower of the motor to be used

//given data
m=500//mass(in kg) of the elevator
v=.20//velocity(in m/s) of the elevator
g=9.8//gravitational acceleration(in m/s^2) of the earth

//calculation
P=m*g*v//power = force*velocity

printf('the value of minimum horsepower of the motor to be used is %3.2f hp',P/746)
