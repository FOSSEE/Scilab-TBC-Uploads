//example 1
//calculating height
clear
clc
m=1100 //mass of car in kg
ke=400 //kinetic energy of car in kJ
V=(2*ke*1000/m)^0.5 //velocity of car in m/s
g=9.807 //acc. due to gravity in m/s^2
H=ke*1000/(m*g) //height to which the car  should be lifted so that its potential energy equals its kinetic energy
disp('hence,the car should be raised to a height of 37.1 m to make its potential energy equal to kinetic energy')