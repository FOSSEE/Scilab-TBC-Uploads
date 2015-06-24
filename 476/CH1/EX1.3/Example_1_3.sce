//A Textbook of Chemical Engineering Thermodynamics
//Chapter 1
//Introduction and Basic Concepts
//Example 3

clear;
clc;


//Given
PE = 1.5*10^3; //potential energy[J]
m = 10; //mass in kg
u = 50; // velocity in m/s

//To find height from ground and kinetic energy
//Using equation 1.8 (Page no. 8)
h = PE/(m*9.8067);// height from ground in m

//Using equation 1.9 (Page no. 8)
KE = 0.5*m*(u^2);// Kinetic energy in J
mprintf('Height from ground is %f m',h);
mprintf('\nKinetic Energy of body is %3.2e J',KE);


//end