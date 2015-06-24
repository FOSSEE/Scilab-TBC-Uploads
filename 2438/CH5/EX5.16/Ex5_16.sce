//=========================================================================
// chapter 5 example 16

clc;
clear;


//input data
 eF      = 5.4;                         //fermi energy in eV
 k       = 1.38*10^-23;                 // k in joule/K


//calculation
 e0      = (3*eF)/5;                       //average energy in eV
 T       = (e0*(1.6*10^-19)*2)/(3*k);           //temperature in K
 

//result
 mprintf('average energy =%3.2f.eV\n',e0);
 mprintf('temperature =%3.2e.K\n',T);

//========================================================================
