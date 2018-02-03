//=====================================================================================
//Chapter 13 example 12

clc;clear all;

//variable declaration
f    = 50;          //number of reversals
m    = 1;           //mass 
d    = 7.8*10**3;           //density 
A    = 4800;                //area of the loop m^3
x    = 200;                 //in AT/m
x1    = 10;                 // 1 unit in mm
y1    = 10;                 // 1 unit in mm
y    = 0.1;                 //in T

//claculations
V    = m/d;             //volume of magnetic material in m^3
l    = A*(x/x1)*(y/y1);
l1   = l*V*f;               //hysteresis loss in watts per kg at 50 Hz

//result
mprintf("hysteresis loss at 50 Hz = %3.3f  watts per kg ",l1);
