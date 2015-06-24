//===========================================================================
//chapter 5 example 39

clc;
clear;


//input data
 k  =1.38*10^-23;
 Tc  =4.2;               //tempetrature in K
 h  =6.6*10^-34;         //planck's constant in (m^2)*kg/s
 c  =3*10^8;             // velocity of light in m
 
 
//calculation
 Eg=(3*k*Tc);       //energy gap in eV
 lamda=h*c/Eg;       //wavelngth in m

//result
 mprintf('region of electromagnetic spectrum=%3.2e.m\n',lamda);
 
 //==============================================================================
