//========================================================================================
// chapter 5 example 5

clc;
clear;

//input data
 n        = 5.8*10^28;                 //number of silver electrons in electrond/m^3
 p        = 1.45*10^-8;               //resistivity in ohm m
 E        = 10^2;                   //electric field in V/m
 e        = 1.6*10^-19; 


//formula
//sigma  = n*e*u 
//sigma=//p
//calculation
 u       = 1/(n*e*p);
 vd      = u*E;                    //drift velocity in m/s

//result
 mprintf('velocity=%3.2f.m/s\n',vd);
 
//==========================================================================================
