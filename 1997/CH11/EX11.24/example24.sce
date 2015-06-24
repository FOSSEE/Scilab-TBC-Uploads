//Chapter-11 example 24
//=============================================================================
clc;
clear;
//input data
F = 10*10^9;//MTI radar operating Frequency
Vo = 3*10^8;//velocity of EM wave in m/s;
PRF = 2*10^3;//pulse repetitive frequency in hz
n=1;//for lowest blind speed
//Calculations
lamda = Vo/F;//wavelength in m
BS   =(n*lamda/2)*PRF;//blind speed

//output
mprintf('Lowest Blind Speed is %g m/s',BS);

//==========end of the program=================================================
