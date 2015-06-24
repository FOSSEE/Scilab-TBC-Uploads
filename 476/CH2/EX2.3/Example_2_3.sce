//A Textbook of Chemical Engineering Thermodynamics
//Chapter 2
//First Law of Thermodynamics
//Example 3


clear;
clc;


//Given
u = 20; //speed of car in m/s
z = 30; //height vertically above the bottom of hill in m
m = 1400; //mass of car in kg

//To find the heat energy dissipated by brakes
//Using equation 2.3 (Page no. 26)
KE = -0.5*m*(u^2); //change in kinetic energy in J
PE = -m*9.81*z; //change in potential energy in J
Q = -(KE+PE); //heat dissipated by brakes in J
mprintf('Heat dissipated by brakes is %3.2e J',Q);

//end