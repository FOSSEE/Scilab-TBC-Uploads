//===========================================================================================
// chapter 4 example 12

clc;
clear;

//input data
 r       = 0.1;                    //radius in  m
 pw      = 1;                     //density of water in  g/ml
 Mw      = 18;                    // molecular mass of water 
 E       = 6.0*10^-30;           //dipole moment of water in cm
 N       = 6.0*10^26;           //avagadro constant in (lb-mol)−1
 
 
//calculation
 n  = N*(4*(%pi)*(r^3)*pw)/(Mw*3)        //number of water molecules in a water drop 
 p  = n*E;                               //polarisation in cm^2


//result
mprintf('polarisation=%3.1e.cm^2\n',p);

//============================================================================================
