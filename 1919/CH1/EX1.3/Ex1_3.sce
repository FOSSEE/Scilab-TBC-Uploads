// Theory and Problems of Thermodynamics
// Chapter 1
// Basic Concepts
// Example 3

clear ;clc;

//Given data
h = 20      //h = height difference in cm
pm = 13600  //pm = density of mercury in kg/m^3
pw = 1000   //pw = density of water in kg/m^3
g = 9.81      //g = gravity of earth in m/s^2

//Calculate pressure drop
h = h * 10^-2;          // units conversion cm to m
del_P = (pm-pw)*h*g     //pressure drop in Pa
del_P = del_P /1000;    //units conversion Pa to kPa

// Results
mprintf('Pressure drop = %5.3f kPa', del_P)
