//================================================================================
// chapter 5 example 12

clc;
clear;


//input data
 x       = 2.54*10^28;           //number of electrons in per m^2
 h       = 6.63*10^-34;          // planck's constant in joule-s
 m       = 9.11*10^-31;         // mass in kg
 p       = 0.971;               //density in grams/cm^3
 k       = 1.38*10^-23;
 

//calculation
//x       = (N*p)/M;
 eF      = (((h^2)/(2*m)))*(((3*x)/(8*%pi))^(2/3));       //Fermi energy
 eF1     = (eF)/(1.6*10^-19);
 vF      = sqrt((2*eF)/m);
 TF      = eF/k;
 

//result
 mprintf('fermi energy =%3.2f.eV\n',eF1);
 mprintf('fermi velocit =%3.2e.m/s\n',vF);
 mprintf('femi temperature =%3.2e.K\n',TF);
 
 //====================================================================================
