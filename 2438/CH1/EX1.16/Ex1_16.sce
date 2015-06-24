//==============================================================================
// chapter 1 example 16     
clc;
clear;

//input data
 m      = 9.1*10^-31;       // mass of electron in kilograms
 e      = 1.6*10^-19;       //charge of  electron in coulombs
 n      = 1;               //bragg's reflection
 h1     = 6.62*10^-34;      //planck's constant J.s
 n     = 1;                 //bragg reflecton 
 V      = 200;              //voltage in V
 theta  = 22;               //observed reflection
 
 //calculation

 lamda      = h1/sqrt(2*m*e*V);
 dhkl       = (n*lamda)/(2*sin(theta*%pi/180));
 a         = dhkl*sqrt(3);
 
 //result
 
 mprintf('lattice parameter =%3.0f.Å\n',a*10^10);
 //===============================================================================
