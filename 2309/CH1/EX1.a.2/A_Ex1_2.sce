// Chapter 1 addl_Example 2 
//==============================================================================
clc;
clear;

//input data

v       = 5000;         // velocity of ultrasonics in m/s
df      = 60*10^3;      // difference b/w two adjacent harmonic freq. in Hz

//Calculations

d       = v/(2*df)  ;       // thickness of steel plate

//Output
mprintf('The thickness of steel plate = %f m',d);

//==============================================================================
