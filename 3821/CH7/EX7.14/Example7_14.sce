///Chapter No 7 Fluid Mechanics
////Example 7.14 Page No:126
////Find Total energy per unit weight
//Input data
clc;
clear;
V=13;                //Velocity of water flowing throgh pipe in m/s
P=200*10^3;         //Pressure of water in Kpa
Z=25;                //Height above the datum in m
g=9.81;
rho=1000;


///Calculation
E=(P/(rho*g))+((V^2)/(2*g))+(Z); //Total energy per unit weight in m


///Output
printf('Total energy per unit weight= %f m \n',E);
