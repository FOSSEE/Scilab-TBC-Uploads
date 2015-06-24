//=======================================================================
// chapter 3 example 13


clc;
clear;

//input data
//diamagnetic susceptability of He
 R         = 0.6*10^-10;             //mean radius of atom in m
 N         = 28*10^26;              //avagadro number in per m^3
 e         = 1.6*10^-19;              //charge of electron in coulombs
 m         = 9.1*10^-31;                //mass of electron in kilograms
  Z         = 2;                        //atomic number
 
 //calculation
 u0        = 4*%pi*10^-7;           //atomic number
 si        = -(u0*Z*(e^2)*N*(R^2))/(6*m);       //susceptability of diamagnetic material 
 
//result
 mprintf('susceptability of diamagnetic material = %3.4e\n',si);
 
//======================================================================
 
