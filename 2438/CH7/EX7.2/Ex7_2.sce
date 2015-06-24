//=======================================================================================================
// Chapter 7 example 2

clc;
clear;

//variable declaration
//given Is2/Is1 =150
//Is2/Is1 =2^(T2-T1)/10
//dT=10ln(I)/ln(2)
 I  = 150;
 


// Calculations
dT  = 10*log(I)/log(2);       // increase in temperature in °C

// Result
mprintf('Increase in temperature necessary to increase Is by a factor by 150 is %3.2f °C',dT);

//========================================================================================================
