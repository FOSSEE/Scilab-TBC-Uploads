//==================================================================================
// chapter 5 example 7

clc;
clear;

//input data
//for common metal copper
 n           = 8.5*10^28;               //number of atoms in m^-3
 sigma       = 6*10^7;                  //sigma  in ohm^-1m^-1
 m           = 9.1*10^-31;              //mass of electron in kilogram
 e           = 1.6*10^-19;              //charge of electron in coulombs

//calculation
 t  = (m*sigma)/(n*(e^2));       //relaxation time in s

//result
 mprintf('time=%3.2e.s\n',t);

//==================================================================================
