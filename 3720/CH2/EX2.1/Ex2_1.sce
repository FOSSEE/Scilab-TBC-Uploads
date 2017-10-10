// Example 2_1
clc;clear;funcprot(0);
// Given values
p=100; // The pressure of air in kPa
T=25+273; // The temperature of air in K
R=0.287; // The gas constant of air in (kPa.m^3)/(kg.K)

//Calculation

rho=p/(R*T); // From ideal gas relation
printf('The density of air,rho =%0.2f kg/m^3\n',rho);

rho_1=1000; // Density of water in kg/m^3
SG=rho /rho_1; // The specific gravity of air
printf('The specific gravity of air,SG =%0.5f \n',SG);

V=4*5*6; // The volume of air in m^3
m=rho*V; // The mass of air in the room in kg
printf('The mass of air,m =%0.0f kg\n',m);
