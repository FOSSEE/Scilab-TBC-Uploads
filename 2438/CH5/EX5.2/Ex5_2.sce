//============================================================================
// chapter 5 example 2

clc;
clear;


//input data
 I       = 6;                    //current in A
 d       = 1*10^-3;             //diameter in m
 n       = 4.5*10^28;          //electrons available in electron/m^3
 e      = 1.6*10^-19;          //charge of  electron  in coulombs


//calculation
 r     = d/2;               //radius in m
 A     = %pi*(r^2);        //area in m^2
 J     = I/A;             //current density in A/m^3
 vd    = J/(n*e);        //density in m/s
 
 
//result
  mprintf('velocity=%3.2e.m/s\n',vd);

//============================================================================
