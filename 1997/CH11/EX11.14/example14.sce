//Chapter-11 example 14
//=============================================================================
clc;
clear;
//input data
Rmax  =  500*10^3;//maximum Range of Radar in ms
Vo    =  3*10^8;//Velocity of EM wave in m/s
//Calculations

PRF   = Vo/(2*Rmax);//pulse repetitive frequency in Hz

//output
mprintf('Pulse repetive frequency required for the range of 500km is %g Hz',PRF);

//========end of program=======================================================
