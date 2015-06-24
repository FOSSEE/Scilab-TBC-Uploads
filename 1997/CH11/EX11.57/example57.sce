//Chapter-11 example 57
//=============================================================================
clc;
clear;
//input data
f       = 10*10^9;       // operating freq. of radar in Hz
Vr      = 800;           // radial ve. of of aircraft in kmph
Vo      = 3*10^8;       //vel of Em wave in m/s;

//calculations

lamda   = Vo/f;        // Wavelength in m
Vr1     = Vr*5/18      // kmph to m/s conversion
fd      = 2*Vr1/lamda;  // Doppler shift freq, in Hz

//Output
mprintf('Doppler shift frequency fd = %3.2e Hz',fd);

//==============================================================================
