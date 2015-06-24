//============================================================================
// chapter 4 example 8
clc;
clear;

//input data
 N      = 10^27;                   //number of HCl molecules in molecules/m^3
 E      = 10^5;                   //electric field in V/m
 P      = 1.04*3.33*10^-30;       //permanent dipole moment in coul.m
 T      = 300;                   //temperature in kelvin
 K      = 1.38*10^-23;
 
 
//calculation
 P0     = (N*P^2*E)/(3*K*T);        //oriental polarisation in coul/m^2

 
//result
 mprintf('oriental polarisation=%3.2e.coul/m^2\n',P0);
 
//=============================================================================
