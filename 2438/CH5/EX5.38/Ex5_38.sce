//==============================================================================
// chapter 5 example 38

clc;
clear;


//input data
 Eg      =30.5*1.6*10^-23;       //energy gap in eV
 h       =6.6*10^-34;           //planck's constant in (m^2)*kg/s
 c       =3.0*10^8;             //velocity of light in m
 

//formula
//Eg=h*v
//calculation
 v       = Eg/h;                //velocity in m
 lamda   = c/v;               //wavelength in m

//result
 mprintf('wavelength=%2e.m\n',lamda);
 
//===============================================================================
