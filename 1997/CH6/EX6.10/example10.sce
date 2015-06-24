//Chapter-6 example 10
//=============================================================================
clc;
clear;
//input data
l  = 2.5*10^-6;//Drift length of gunn diode in m
Vd = 2*10^8;//Drift velocity in gun diode
Vgmin = 3.3*10^3;//minimum voltage gradient required to start the diode
//Calculations
Vmin  = Vgmin*l;

//output
mprintf('Minimum Voltage required to operate gunn diode is %g mV',Vmin*10^3);
//=============end of the program===============================================
