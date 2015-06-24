//A Textbook of Chemical Engineering Thermodynamics
//Chapter 1
//Introduction and Basic Concepts
//Example 7


clear;
clc;


//Given:
T = 300; //temperature in K
P = 6.5*10^5; //pressure in N/m^2
Pa = 1.01325*10^5; //atmospheric pressure in N/m^2
R = 8.314; //ideal gas constant
m = 2; //mass of gas (kg)
M = 44; //molecular weihgt of gas

//To find the work done on surrounding
n = m/M; // n is number of kmoles
Vi = (n*R*10^3*T)/P; // initial volume in m^3
Vf = 2*Vi; //final volume in m^3
V = Vf-Vi; //change in volume
Ps = Pa+(5000*9.8067); //pressure on surroundings
W = Ps*V; //work done on the surroundings
mprintf('Work done on surroundings is %5.2e J',W);


//end