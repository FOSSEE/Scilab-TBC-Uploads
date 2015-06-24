//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 14.8
//calculation of the height of the water in the column

//given data
r=.2*10^-3//radius(in m) of the tube
S=.075//surface tension(in N/m) of the water
g=10//gravitational acceleration(in m/s^2) of the earth
rho=1000//density of the water(in kg/m^3)
theta=0//tube dipped vertically

//calculation
h=(2*S*cosd(theta))/(r*rho*g)//height in column

printf('the height of the water in the column is %3.1f cm',h*10^2)
