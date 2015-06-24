// Chapter 1 Example 3
//==============================================================================
clc;
clear;

//input data

f       = 1.5*10^6;         //frequency of ultrasonics in Hz
d6      = 2.75*10^-3;       // distance between 6 consecutive nodes

//Calculations
d       = d6/5;             // distance b/w two nodes
lamda   = 2*d;              // wavelength in m
v       = f*lamda;          // velocity of ultrasonics

//Output
mprintf('Velocity of ultrasonics  = %3.0f m/sec',v);

//==============================================================================       
