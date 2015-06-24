//==============================================================================
// chapter 6 exmple 19
 
clc;
clear;

//input data

 Q        = 20*10^-6;                //charge of electron in coulomb
 V        = 10*10^3;                 //potential in V
 e0       = 8.854*10^-12;           //absolute permitivity
 d        = 5*10^-4;               //separation between plates in m
 er       = 10;                   //dielectric constant

//formula
//Q=CV
//C=er*e0*A/d
 C       = Q/V;
 A       = (C*d)/(er*e0);         //area in m^2
 
//result
mprintf('area=%1e.m^2\n',A);

//===============================================================================

