//Chapter-11 example 54
//=============================================================================
clc;
clear;
//input data
f       = 10*10^9;      // operating freq. of radar in Hz
Vo      = 3*10^8;       //vel of Em wave in m/s;
D       = 5;            //Diameter of antenna in m

//calculations
lamda   = Vo/f;         // wavelength in m
BW      = 70*(lamda/D)  // BeamWidth in degrees

//output
mprintf('Beamwidth  = %3.3f degrees',BW);
//==============================================================================
