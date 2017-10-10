// Example 10_2
clc;clear;funcprot(0);
//Given data
D=50*10^-6;// Diameter of spherical ash particle in m
T=-50;// °C
P=55;// kPa
rho_p=1240;// The density of the particle in kg/m^3
//Properties
mu=1.474*10^-5;// kg/m.s
rho_air=0.8588;// kg/m^3
g=9.81;// The acceleration due to gravity  in m/s^2

//Calculation
V=(D^2/(18*mu))*(rho_p-rho_air)*g;//The terminal velocity of this particle in m/s
printf('\nThe terminal velocity of this particle,V=%0.3f m/s',V);
Re=(rho_air*V*D)/mu;
