//====================================================================================================================
// chapter 5 example 13

clc;
clear;


//input data 
 M      = 65.4;              //atomic weight
 p      = 7.13;              //density
 h      = 6.62*10^-34;      // planck's constant
 m      = 7.7*10^-31;       // mass
 v      = 6.02*10^23;


//calculation
//x =N/V
 V      = M/p;                                      //volume of one atom in cm^3
 n      = v/V;                                     // number of Zn atoms in volume v
 x      = 2*n*(10^6);                             //number of free electrons in unit volume iper m^2
 eF     = ((h^2)/(2*m))*(((3*x)/(8*%pi))^(2/3));        // fermi energy in J
 eF1    = eF/(1.6*(10^-19));


//result
 mprintf('fermi energy =%3.2d.eV\n',eF1);
 
//============================================================================================================================ 
