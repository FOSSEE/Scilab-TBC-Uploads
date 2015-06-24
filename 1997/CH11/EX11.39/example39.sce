//Chapter-11 example 39
//=============================================================================
clc;
clear;
//Given data
lamda     = 0.06;       // wavelength in m
Vr        = 100 ;       // Radial velocity of target in kmph

//Calculations
Vr1       = Vr*(5/18);  //Radial vel. in m/s
fd        = (2*Vr1)/lamda; //doppler shift

//output

mprintf('Doppler Shift is %3.3f Khz',fd/1000);

//==============================================================================
