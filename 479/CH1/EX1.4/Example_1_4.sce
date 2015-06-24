//Chemical Engineering Thermodynamics
//Chapter 1
//Introduction

//Example 1.4
clear;
clc;

//Given
h = 100;//h is the height of the water fall in m
n = .855;//n is the efficiency of the turbine
g = 9.8;//g is the acceleration due to gravity in m/(s^2)
E = 100*10*3600;//E is the potential enery of water available to the bulb for 10 hours in watt or J/s

//To determine the mass of water required
m = (E/(g*h*n));//m is the mass of water required for lighting the bulb for 10 hours in Kg
mprintf('Mass of water required for lighting the bulb for 10 hours in Kg= %f Kg',m);
mprintf('\n Mass of water required for lighting the bulb for 10 hours in tonnes= %f Kg',m/907.2);
//end
