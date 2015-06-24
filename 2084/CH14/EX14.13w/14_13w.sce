//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 14.13w
//calculation of the radius of the capillary tube

//given data
h=7.5*10^-2//height(in m) by which the capillary rises
S=7.5*10^-2//suface tension(in N/m) of water
theta=0//contact angle(in degree) between water and glass
g=10//gravitational acceleration(in m/s^2) of the earth
rho=1000//density(in kg/m^3) of water 

//calculation
r=(2*S*cosd(theta))/(h*rho*g)//from formula of height in capillary tube

printf('the radius of the capillary tube is %3.1f mm',r*10^3)
