//Chapter-6 example 9
//=============================================================================
clc;
clear;
//input data
l  = 12*10^-3;//gunn diode oscillator length in m
Vd = 2*10^8;//Drift velocity in gunn diode
//Calculations
F  = Vd/l;//Frequency of Gunn Diode Oscillator
//output
mprintf('Frequency of Gunn Diode Oscillator is %3.2f Ghz',F/10^9');

//=============end of the program===============================================
