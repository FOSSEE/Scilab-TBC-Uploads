//Chapter-11 example 56
//=============================================================================
clc;
clear;
//input data
f       = 9*10^9;       // operating freq. of radar in Hz
Vo      = 3*10^8;       //vel of Em wave in m/s;
fd      = 1000;         // doppler shift freq. in Hz

//Calculations
lamda   = Vo/f;        // Wavelength in m
Vr      = lamda*fd/2;  // radial velocity of target

//output
mprintf('Radial velocity of target Vr = %3.2f m/s',Vr);

//==============================================================================
