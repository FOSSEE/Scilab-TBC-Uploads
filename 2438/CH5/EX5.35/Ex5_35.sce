//==============================================================================
// chapter 5 example 35

clc;
clear;


//input data
 D          =8.5*10^3;             //density in kg/m^3
 W          =93;                   //atomic weight 
 m          =9.1*10^-31;           //mass of electron in kilograms
 e          =2*1.6*10^-19;          //charge of electron in coulombs
 N          =6.023*10^26;           //avagadro number in (lb-mol)−1


//calculation
 u0         =4*%pi*10^-7;
 ns         =(D*N)/W;                   //in per m^3
 lamdaL     =(m/(u0*ns*e^2))^(1/2);    //London's penetration depth in nm

//result
 mprintf('penetration depth=%3.2f.nm\n',lamdaL/10^-9);
 
 //===============================================================================

