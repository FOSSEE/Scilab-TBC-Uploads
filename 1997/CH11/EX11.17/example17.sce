//Chapter-11 example 17
//=============================================================================
clc;
clear;
//input data
D   =  200;//azimuth distance between two radars
R   =  10*10^3;//Range of radar

//Calculations
BWdB = (D/R)*(180/%pi);//3dB beam width in degrees

//Output
mprintf('Maximum 3db beamwidth of radar resolving the target is %3.3f degrees',BWdB);

//=============end of the program===============================================
