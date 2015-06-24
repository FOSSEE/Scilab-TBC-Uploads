//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 14.7
//calculation of the density of the liquid

//given data
h=.02*10^-2//height(in m) of the column of liquid
R=7.5*10^-3//radius(in m) of the soap bubble
S=.03//surface tension(in N/m) of the soap solution
g=9.8//gravitational acceleration(in m/s^2) of the earth

//calculation
deltaP=4*S/R//excess pressure inside the soap bubble
rho=deltaP/(h*g)//densiy

printf('the density of the liquid is %3.1e kg/m^3',rho)
