//A Textbook of Chemical Engineering Thermodynamics
//Chapter 1
//Introduction and Basic Concepts
//Example 1

clear;
clc;


//Given:
F = 300; //[N]
g_local = 4.5; //local gravitational acceleration[m/s^2]
g_earth = 9.81; //earth's gravitational acceleration[m/s^2]


//To find man's mass and weight on earth
m = F/g_local;//mass of man[kg]
w = m*g_earth; // weight of man on earth[N]
mprintf('Mass of man is %f kg',m);
mprintf('\nWeight of man on earth is %f N',w);


//end