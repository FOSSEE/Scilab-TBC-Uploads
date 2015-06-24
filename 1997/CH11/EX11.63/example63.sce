//Chapter-11 example 63
//=============================================================================
clc;
clear;
//Given data
Vr      = 300;          // Velocity of radar in m/s
Vair    = 200;          // velocty of aircraft in m/s
f       = 10*10^9;      // Radar operating frequency
Vo      = 3*10^8;       //vel of Em wave in m/s;

//Calculations

lamda   = Vo/f;         // wavelength in m
Vrel    = Vr+Vair;      //relative radial vel. b/w radar and aircraft when approaching each other
fd      = (2*Vrel)/lamda// Doppler frequency

//Output
mprintf('Doppler frequency = %3.2f KHz',fd/1000);
//==============================================================================
