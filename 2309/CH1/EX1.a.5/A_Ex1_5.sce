// Chapter 1 addl_Example 5 
//==============================================================================
clc;
clear;

//input data

P           = 1;            // for fundamental mode
p           = 2660          // density of quartz in kg/m^3
f           = 1300*10^3     // freq of quartz plate for sub division ii
k           = 2.87*10^3
//f1        = (k)/t  // freq for sub division i

//Calculations

//f           = (P/(2*t))*sqrt(E/p);  
E             = p*4*(k)^2;      //Youngs modulus in N/m^2
t           = (P/(2*f))*sqrt(E/p);       


//Output
mprintf('Youngs modulus of quartz plate = %e Nm^-2\n Thickness of the crystal = %e m',E,t);

//==============================================================================
