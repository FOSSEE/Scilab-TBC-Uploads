//==============================================================================
// chapter 5 example 18

clc;
clear;

//input data
 EF        = 7.5;                     //fermi energy  in eV
 m         = 9.1*10^-31;            //mass of electron in kilograms

//calculation

 E0        = (3*EF)/5;             //average energy en eV
 v=sqrt((2*E0*1.6*10^-19)/m);       //speed in m

//result
 mprintf('average energy =%3.2f.eV\n',E0);
 mprintf(' speed =%3.2e.m/s\n',v);
 
//=============================================================================
