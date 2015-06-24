//===============================================================================================
// chapter 8 example 17

clc;
clear;

// Variable Declaration

  Eg        = 1.35*1.6*10^-19;          //energy in eV
  h         = 6.63*10^-34;             //plancks constant in J.s
  c         = 3*10^8;               //velocity in m
  
  //calculation
  lamda     = (h*c)/Eg;             //wavelength in m
  
  //result
  mprintf('cutoff wavelength =%3.2e m\n',lamda);
  
  //==============================================================================================
  
