//Chapter-11 example 59
//=============================================================================
clc;
clear;
//Given data
lamda     = 3*10^-2;    //Wavelength in m
PRF       = 1000;       //Pulse Repetitive frequency in Hz
n         = 1'          // n value for lowest blind speed

//Calculations
Vb        = (n*lamda/2)*PRF;   //Blind speed of the Radar in m/s

//Output
mprintf('Lowet blind speed = %d m/s',Vb);
//==============================================================================
