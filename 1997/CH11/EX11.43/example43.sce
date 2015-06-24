//Chapter-11 example 43
//=============================================================================
clc;
clear;
//Given data
Vr         = 100;       // speed of car in kmph
f          = 10*10^9;   // Radar operating frequency
Vo         = 3*10^8;    // vel. of EM wave

//Calculations

Vr1        = Vr*(5/18); // kmph to m/s conversion
fd         = (2*Vr1*f)/Vo; // Doppler shift in Hz

//Output
mprintf('Doppler shift = %3.2f Khz',fd/1000);

//==============================================================================
