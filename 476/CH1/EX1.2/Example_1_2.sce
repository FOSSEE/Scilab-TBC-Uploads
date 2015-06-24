//A Textbook of Chemical Engineering Thermodynamics
//Chapter 1
//Introduction and Basic Concepts
//Example 2

clear;
clc;


//Given:
p1 = 1.15*10^5; //measured pressure[N/m^2]
p2 = 1.01325*10^5; //atmospheric pressure[N/m^2]
sg = 2.95; //specific gravity of fluid

//To find height of manometer fluid
p = p1-p2; //difference in pressure
//Using equation 1.2 (Page no. 6)
h = p/(sg*(10^3)*9.8067); //height of manometer fluid[m]
mprintf('Height of manometer fluid is %f m',h);


//end