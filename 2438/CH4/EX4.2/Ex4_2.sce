//========================================================================
// chapter 4 example 2

clc;
clear;


//input dta
 alpha       = 1.8*10^-40;       //polarisability of argon in F*m^2
 E           = 2*10^5;           // in V/m
 z           = 18;
 e           = 1.6*10^-19;
 
 
//formula
//p=18*e*x
//calculation
 p       = alpha*E;
 x       = p/(18*e);     //shift of electron in m

  
//result
 mprintf('displacement=%3.2e.m\n',x);
 
//=======================================================================
