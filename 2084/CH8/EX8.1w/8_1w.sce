//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 8.1w
//calculation of the work done by the porter on the suitcase

//given data
m=20//mass(in kg) of suitcase
h=2//height(in m) above the platform
g=9.8//gravitational acceleration(in m/s^2) of the earth

//calculation
W=-m*g*h//work done by gravity
//the work done by the porter = negative of the work done by gravity

printf('the work done by the porter on the suitcase is %d J',-W)
