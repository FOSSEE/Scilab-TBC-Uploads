//==============================================================================
// chapter 5 example 17

clc;
clear;


//input data
 EF        = 15;                     //fermi energy  in eV
 m         = 9.1*10^-31;            //mass of electron in kilogarams


//calculation
 E0        = (3*EF)/5;                        //average energy en eV
 v         =sqrt((2*E0*1.6*10^-19)/m);              //speed of electron in m/s


//result
 mprintf('average energy =%3.2f.eV\n',E0);
 mprintf('speed =%3.2e.m/s\n',v);
 
//=============================================================================
