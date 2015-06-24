//Chapter-11 example 58
//=============================================================================
clc;
clear;
//input data
f       = 6*10^9;       // operating freq. of radar in Hz
Vr      = 600;           // radial ve. of of aircraft in kmph
Vo      = 3*10^8;       //vel of Em wave in m/s;

//calculations

lamda   = Vo/f;        // Wavelength in m
Vr1     = Vr*5/18      // kmph to m/s conversion
fd      = 2*Vr1/lamda;  // Doppler shift freq, in Hz

V       = Vr1*cos((45*%pi/180)) // vel in direction of radar if  target direction changes by 45 deg
fd1     = 2*V/lamda ;   //doppler shift freq. in Hz


//Output
mprintf('Doppler shift frequency fd = %3.2f KHz\n Doppler shift frequency if the target changes its direction by 45deg = %3.2f KHz',fd/1000,fd1/1000);

//==============================================================================
