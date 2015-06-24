//Chapter-11 example 37
//=============================================================================
clc;
clear;
//Given data
lamda     = 6*10^-2;    //Wavelength in m
PRF       = 800;        //Pulse Repetitive frequency in Hz
n1        = 1 ;         //n value for first blind speed
n2        = 2 ;         //n value for first blind speed
n3        = 3 ;         //n value for first blind speed

//Calculations

//Vb      = (n*lamda/2)*PRF;   Blind speed of the Radar

//For n = 1

Vb1       = (n1*lamda/2)*PRF;   //Blind speed of the Radar in m/s
Vb2       = (n2*lamda/2)*PRF;   //Blind speed of the Radar in m/s
Vb3       = (n3*lamda/2)*PRF;   //Blind speed of the Radar in m/s

//multiply by 18/5 to convert from m/s to kmph

//Output
mprintf('The lowest Blind speeds are %3.1f, %3.2f and %3.2f Km/hr',Vb1*(18/5),Vb2*(18/5),Vb3*(18/5));

//=============end of program==================================================
